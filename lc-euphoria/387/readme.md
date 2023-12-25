[OpenEuphoria](https://openeuphoria.org/)

Eu realmente fiquei impressionado com o resultado desse leetcode do código compilado com watcom.

Embora euphoria seja uma linguagem antiga, ela ainda demostra o quanto é rápida.

[Benchmark](./benchs.txt)
```
-----------------------------------
BENCH_SMALL_STRING_REPEATING
0 ms  O(n2) | bench_small_string_repeating()
0 ms  O(n) | bench_small_string_repeating()
0 ms  O(n) | small allocation | bench_small_string_repeating()
-----------------------------------
BENCH_SMALL_STRING_NON_REPEATING
0 ms  O(n2) | bench_small_string_non_repeating()
0 ms  O(n) | bench_small_string_non_repeating()
0 ms  O(n) | small allocation | bench_small_string_non_repeating()
-----------------------------------
BENCH_LARGE_STRING_REPEATING
0.859 ms  O(n2) | bench_large_string_repeating()
0.281 ms  O(n) | bench_large_string_repeating()
0.032 ms  O(n) | small allocation | bench_large_string_repeating()
-----------------------------------
BENCH_LARGE_STRING_NON_REPEATING
0.828 ms  O(n2) | bench_large_string_non_repeating()
0.281 ms  O(n) | bench_large_string_non_repeating()
0.031 ms  O(n) | small allocation | bench_large_string_non_repeating()
```

[Benchmark](./e2c_benchs.txt)
```
-----------------------------------
BENCH_SMALL_STRING_REPEATING
0 ms  O(n2) | bench_small_string_repeating()
0 ms  O(n) | bench_small_string_repeating()
0 ms  O(n) | small allocation | bench_small_string_repeating()
-----------------------------------
BENCH_SMALL_STRING_NON_REPEATING
0 ms  O(n2) | bench_small_string_non_repeating()
0 ms  O(n) | bench_small_string_non_repeating()
0 ms  O(n) | small allocation | bench_small_string_non_repeating()
-----------------------------------
BENCH_LARGE_STRING_REPEATING
0.109 ms  O(n2) | bench_large_string_repeating()
0.078 ms  O(n) | bench_large_string_repeating()
0 ms  O(n) | small allocation | bench_large_string_repeating()
-----------------------------------
BENCH_LARGE_STRING_NON_REPEATING
0.125 ms  O(n2) | bench_large_string_non_repeating()
0.063 ms  O(n) | bench_large_string_non_repeating()
0 ms  O(n) | small allocation | bench_large_string_non_repeating()
```