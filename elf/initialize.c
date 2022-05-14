#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern char __fini_array_end, edata, end;

int i0, i1 = 1;
double d0, d1 = 0.1;
char *s0, *s1 = "sample string";

char *save_ivalue() {
  char *p;
  long size = &edata - &__fini_array_end;
  p = malloc(size);
  memcpy(p, &__fini_array_end, size);
  return p;
}

void reest_ivalue(char *p) {
  memcpy(&__fini_array_end, p, (&edata - &__fini_array_end));
  memset(&edata, 0, (&end - &edata));
}

int main() {
  char *p;
  p = save_ivalue();
  printf("i0 = %d, i1 = %d, d0 = %f, d1 = %f, s0 = %s, s1 = %s\n",
         i0, i1, d0, d1, s0, s1);

  i0 = 1; i1 = 2; d0 = 1.1; d1 = 1.2; s0 = "sample1"; s1 = "sample2";
  printf("i0 = %d, i1 = %d, d0 = %f, d1 = %f, s0 = %s, s1 = %s\n",
         i0, i1, d0, d1, s0, s1);

  reest_ivalue(p);
  printf("i0 = %d, i1 = %d, d0 = %f, d1 = %f, s0 = %s, s1 = %s\n",
         i0, i1, d0, d1, s0, s1);

  exit(0);
}
