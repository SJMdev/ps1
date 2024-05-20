#include <stdio.h>

static int factorial(int n)
{
    unsigned long long result = 1;
    for (int i = 1; i <= n; ++i) {
        result *= i;
    }
    return result;
}

int main(int argc, char* argv[])
{
    printf("factorial: %d is %d\n", 6, factorial(6));
}