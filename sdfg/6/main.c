#include <stdio.h>
#include <time.h>
#define MAX 100
int cache[MAX] = {0};

int factorial_unoptimized(int n) {
if (n <= 1) {
return 1;
} else {
return n * factorial_unoptimized(n - 1);
}
}


int factorial_optimized_memoization(int n, int cache[]) {
if (n <= 1) {
return 1;
} else if (cache[n] != 0) {
return cache[n];

} else {
cache[n] = n * factorial_optimized_memoization(n - 1, cache);
return cache[n];
}
}

int main() {
clock_t start, end;
double cpu_time_used_unoptimized = 0, cpu_time_used_optimized = 0;

int num = 30;
int iterations = 1000000;
// Original unoptimized version
for (int i = 0; i < iterations; i++) {
start = clock();
int result1 = factorial_unoptimized(num);
end = clock();
cpu_time_used_unoptimized += ((double) (end - start)) / CLOCKS_PER_SEC;
}
printf("Unoptimized - Factorial of %d is: %d\n", num, factorial_unoptimized(num));
// Optimized version with memoization
for (int i = 0; i < iterations; i++) {
start = clock();
// Initialize cache array
int result2 = factorial_optimized_memoization(num, cache);
end = clock();
cpu_time_used_optimized += ((double) (end - start)) / CLOCKS_PER_SEC;
}
printf("Optimized (with memoization) - Factorial of %d is: %d\n", num,
factorial_optimized_memoization(num, cache));
// Print average CPU time used for both versions
printf("Average unoptimized CPU time used: %.10lf seconds\n",
cpu_time_used_unoptimized / iterations);
printf("Average optimized CPU time used: %.10lf seconds\n",
cpu_time_used_optimized / iterations);
return 0;
}

