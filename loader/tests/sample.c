#include <stdio.h>

static int s1, s2 = 1;
int g1, g2 = 1;
const int g3 = 1;
extern int e3;

static void sfunc() {
  s1 = s2 = 10;
  g1 = g2 = 10;
  e3 = 10;
}

void gfunc() {
  sfunc();
  g1 = e3 = 20;
  fprintf(stdout, "sample\n");
}
