#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <elf.h>
#include <sys/stat.h>
#include <sys/mman.h>

typedef void (*func_t)();
typedef Elf64_Shdr Elf_Shdr;
typedef Elf64_Ehdr Elf_Ehdr;
typedef Elf64_Phdr Elf_Phdr;

static Elf_Shdr *get_shdr(Elf_Ehdr *ehdr, int num)
{
  Elf_Shdr *shdr;
  if ((num < 0) || (num >= ehdr->e_shnum)) {
    fprintf(stderr, "cannot find shdr (%d)\n", num);
    return NULL;
  }

  shdr = (Elf64_Shdr *)((char *)ehdr +
      ehdr->e_shoff + ehdr->e_shentsize * num);
  return shdr;
}

static Elf_Shdr *search_shdr(Elf_Ehdr *ehdr, char *name)
{
  int i;
  Elf_Shdr *shdr;
  Elf_Shdr *nhdr;

  nhdr = get_shdr(ehdr, ehdr->e_shstrndx);
  for (i = 0; i < ehdr->e_shnum; i++) {
    shdr = get_shdr(ehdr, i);
    if (!strcmp((char *)ehdr + nhdr->sh_offset
          + shdr->sh_name, name)) {
      fprintf(stderr, "found %s\n", name);
      return shdr;
    }
  }

  fprintf(stderr, "cannot find shdr %s\n", name);
  return NULL;
}

int is_elf(Elf64_Ehdr *ehdr) {
  return
    ehdr->e_ident[EI_MAG0] == ELFMAG0 &&
    ehdr->e_ident[EI_MAG1] == ELFMAG1 &&
    ehdr->e_ident[EI_MAG2] == ELFMAG2 &&
    ehdr->e_ident[EI_MAG3] == ELFMAG3;
}

static func_t load_file(char *head)
{
  int i;
  Elf_Ehdr *ehdr;
  Elf_Phdr *phdr;
  Elf_Shdr *shdr;
  func_t f;

  ehdr = (Elf_Ehdr *)head;
  if (!is_elf(ehdr)) {
    fprintf(stderr, "This is not ELF file.\n");
    return NULL;
  }

  if (ehdr->e_ident[EI_CLASS] != ELFCLASS64) {
    fprintf(stderr, "unknown class. (%d)\n", (int)ehdr->e_ident[EI_CLASS]);
    return NULL;
  }

  if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) {
    fprintf(stderr, "unknown endian. (%d)\n", (int)ehdr->e_ident[EI_DATA]);
    return NULL;
  }

  if (ehdr->e_type != ET_EXEC) {
    fprintf(stderr, "unknown type. (%d)\n", (int)ehdr->e_type);
    return NULL;
  }

  // Load program header to memory
  for (i = 0; i < ehdr->e_phnum; i++) {
    fprintf(stderr, "Program Header %d:", i);
    phdr = (Elf_Phdr *)(head + ehdr->e_phoff + ehdr->e_phentsize * i);
    switch (phdr->p_type) {
    case PT_LOAD:
      fprintf(stderr, " Type:LOAD");
      memcpy((char *)phdr->p_vaddr, head + phdr->p_offset, phdr->p_filesz);
      fprintf(stderr, " (load)\n");
      break;
    deafult:
      fprintf(stderr, " Type:OTHER\n");
    }
  }

  // Clear .bss section
  shdr = search_shdr(ehdr, ".bss");
  if (shdr) {
    fprintf(stderr, "clear BSS: 0x%08lx, 0x%08lx\n", shdr->sh_addr, shdr->sh_size);
    memset((char *)shdr->sh_addr, 0, shdr->sh_size);
  }

  f = (func_t)ehdr->e_entry;
  fprintf(stderr, "Entry Point: 0x%08lx\n", (long)f);

  return f;
}

#define USE_LOADER_ARGV

int main(int argc, char *argv[])
{
  int fd;
  struct stat sb;
  char *head;
  func_t f;
  static char filename[128];

#ifdef USE_LOADER_ARGV
  static char **stackp;
#endif

  strcpy(filename, argv[1]);
  fprintf(stderr, "open file. (%s)\n", filename);

  fd = open(filename, O_RDONLY);
  if (fd < 0) {
    fprintf(stderr, "cannot open file. (%s)\n", filename);
    exit(1);
  }
  fstat(fd, &sb);

  head = mmap(NULL, sb.st_size, PROT_READ, MAP_SHARED, fd, 0);
  f = load_file(head);
  if (f == NULL) {
    fprintf(stderr, "fail to load file.\n");
    exit(1);
  }
  close(fd);
  fprintf(stderr, "jump to entry point.\n");

#ifndef USE_LOADER_ARGV
  asm volatile("pushl $0");                   /* env[0] = NULL */
  asm volatile("pushl $0");                   /* argv[1] = NULL */
  asm volatile("pushl %0" :: "m"(filename));  /* argv[0] = filename */
  asm volatile("pushl $1");                   /* argc = 1 */
#else
  argv[0] = (char *)(argc - 1);
  stackp = &argv[0];
  asm volatile("movl %0, %%esp" :: "m"(stackp));
#endif

  asm volatile("jmp *%0" :: "m"(f));
  exit(0);
}
