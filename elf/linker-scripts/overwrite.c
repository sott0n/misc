#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int value;
char buffer[100];

void func1() { value += 1; }
void func2() { value += 2; }
void func3() { value += 3; }

int main()
{
    value = 0;
    func1();
    func2();
    func3();
    printf("value = %d\n", value); /* 6 */
    memcpy(func1, func2, (char *)func3 - (char *)func2);
    memcpy(buffer, func3, (char *)main - (char *)func3);

    value = 0;
    func1(); /* 2 */
    printf("value = %d\n", value);
    func2(); /* 4 */
    printf("value = %d\n", value);
    ((void(*)())buffer)(); /* 7 */
    printf("value = %d\n", value);

    exit(0);
}
