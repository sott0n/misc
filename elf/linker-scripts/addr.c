#include <stdio.h>

extern int value;
extern int stext, etext;
extern int srdata, erdata;
extern int sdata, edata;
extern int sbss, ebss;

int main()
{
    printf("&value = %p\n", &value);
    printf("stext = 0x%08x, etext = 0x%08x\n", stext, etext);
    printf("sdata = 0x%08x, edata = 0x%08x\n", sdata, edata);
    printf("stext = %p, etext = %p\n", &stext, &etext);
    printf("srdata = %p, erdata = %p\n", &srdata, &erdata);
    printf("sdata = %p, edata = %p\n", &sdata, &edata);
    printf("sbss = %p, ebss = %p\n", &sbss, &ebss);
}
