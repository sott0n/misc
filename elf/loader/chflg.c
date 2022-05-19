#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <elf.h>
#include <sys/stat.h>
#include <sys/mman.h>

int is_elf(Elf64_Ehdr *ehdr) {
  return
    ehdr->e_ident[EI_MAG0] == ELFMAG0 &&
    ehdr->e_ident[EI_MAG1] == ELFMAG1 &&
    ehdr->e_ident[EI_MAG2] == ELFMAG2 &&
    ehdr->e_ident[EI_MAG3] == ELFMAG3;
}

static int chflg(char *head)
{
  int i;
  Elf64_Ehdr *ehdr;
  Elf64_Phdr *phdr;

  ehdr = (Elf64_Ehdr *)head;
  if (!is_elf(ehdr)) {
    fprintf(stderr, "This is not ELF file.\n");
    return (-1);
  }

  if (ehdr->e_ident[EI_CLASS] != ELFCLASS64) {
    fprintf(stderr, "unknown class. (%d)\n", (int)ehdr->e_ident[EI_CLASS]);
    return (-1);
  }

  if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) {
    fprintf(stderr, "unknown endian. (%d)\n", (int)ehdr->e_ident[EI_DATA]);
    return (-1);
  }

  for (i = 0; i < ehdr->e_phnum; i++) {
    phdr = (Elf64_Phdr *)((char *)ehdr + ehdr->e_phoff + ehdr->e_phentsize * i);
    phdr->p_flags = PF_X | PF_W | PF_R;
  }

  return (0);
}

int main(int argc, char *argv[])
{
  int fd;
  struct stat sb;
  char *head;

  fd = open(argv[1], O_RDWR);
  if (fd < 0) {
    fprintf(stderr, "cannot open file.\n");
    exit(1);
  }

  fstat(fd, &sb);
  head = mmap(NULL, sb.st_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

  if (chflg(head) < 0)
    fprintf(stderr, "fail to change flags.\n");

  close(fd);
  exit(0);
}
