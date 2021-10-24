#include <stdio.h>

int main() {
    long long n;

    printf("Enter a positive number: ");
    scanf("%lld", &n);

    if (n < 1) {
        printf("Negative numbers and nul are not allowed.");
    } else {
        int s = 0;
        while (n != 1) {
            if (n % 2 == 0) {
                n /= 2;
            } else {
                n = n * 3 + 1;
            }
            s += 1;
        }
        printf("Finished in %d steps.", s);
    }

    return 0;
}   