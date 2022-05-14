#include <stdlib.h>
#include <stdio.h>

extern int __fini_array_end;
extern int edata;
extern int end;

int main() {
  printf("&__fini_array_end = %p\n", &__fini_array_end);
  printf("&edata            = %p\n", &edata);
  printf("&end              = %p\n", &end);

  exit(0);
}
