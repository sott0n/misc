#include <stdio.h>

extern char cvalue;
extern short int svalue;
extern long int lvalue;
extern long int lvalue2;

int main()
{
    printf("&cvalue = %p, cvalue = %d\n", &cvalue, (int)cvalue);
    printf("&svalue = %p, svalue = %d\n", &svalue, (int)svalue);
    printf("&lvalue = %p, lvalue = %d\n", &lvalue, (int)lvalue);
    printf("&lvalue2 = %p, lvalue2 = %d\n", &lvalue2, (int)lvalue2);
}
