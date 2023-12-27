#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "funcs.c"

char *repeat_char(char c, int count);
void bench_small_string_repeating();
void bench_small_string_non_repeating();
void bench_large_string_repeating();
void bench_large_string_non_repeating();

char *const small_string_repeating = "abcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba";
char *const small_string_non_repeating = "bcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba";

int main(char const *argv[])
{
    char *const separator = repeat_char('-', 50);

    printf("%s\n", separator);

    bench_small_string_repeating();

    printf("%s\n", separator);

    bench_small_string_non_repeating();

    printf("%s\n", separator);

    bench_large_string_repeating();

    printf("%s\n", separator);

    bench_large_string_non_repeating();

    return 0;
}

void bench_small_string_repeating()
{
    printf("BENCH_SMALL_STRING_REPEATING\n");

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    firstUniqChar_1(small_string_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n²) | bench_small_string_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_2(small_string_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | bench_small_string_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_3(small_string_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | small allocation | bench_small_string_repeating()\n", cpu_time_used);
}

void bench_small_string_non_repeating()
{
    printf("BENCH_SMALL_STRING_NON_REPEATING\n");

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    firstUniqChar_1(small_string_non_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n²) | bench_small_string_non_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_2(small_string_non_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | bench_small_string_non_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_3(small_string_non_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | small allocation | bench_small_string_non_repeating()\n", cpu_time_used);
}

void bench_large_string_repeating()
{
    printf("BENCH_LARGE_STRING_REPEATING\n");

    char *const str_1 = "abcdefghjiklmnopqrstuvwxyz";
    char *const str_2 = "zyxwvutsrqponmlkjihgfedcba";
    char *const repeat = repeat_char('z', 1000000);
    char *large_string_repeating = malloc(strlen(str_1) + strlen(str_2) + strlen(repeat));
    sprintf(large_string_repeating, "%s%s%s", str_1, repeat, str_2);

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    firstUniqChar_1(large_string_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n²) | bench_large_string_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_2(large_string_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | bench_large_string_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_3(large_string_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | small allocation | bench_large_string_repeating()\n", cpu_time_used);
}

void bench_large_string_non_repeating()
{
    printf("BENCH_LARGE_STRING_NON_REPEATING\n");

    char *const str_1 = "bcdefghjiklmnopqrstuvwxyz";
    char *const str_2 = "zyxwvutsrqponmlkjihgfedcba";
    char *const repeat = repeat_char('z', 1000000);
    char *bench_large_string_non_repeating = malloc(strlen(str_1) + strlen(str_2) + strlen(repeat));
    sprintf(bench_large_string_non_repeating, "%s%s%s", str_1, repeat, str_2);

    clock_t start, end;
    double cpu_time_used;

    start = clock();

    firstUniqChar_1(bench_large_string_non_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n²) | bench_large_string_non_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_2(bench_large_string_non_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | bench_large_string_non_repeating()\n", cpu_time_used);

    start = clock();

    firstUniqChar_3(bench_large_string_non_repeating);

    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("%f  O(n) | small allocation | bench_large_string_non_repeating()\n", cpu_time_used);
}

char *repeat_char(char c, int count)
{
    char *result = malloc(count + 1); // Adiciona 1 para o caractere nulo no final
    memset(result, c, count);
    result[count] = '\0'; // Termina a string com um caractere nulo
    return result;
}