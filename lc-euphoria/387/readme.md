[OpenEuphoria](https://openeuphoria.org/)

Eu realmente fiquei impressionado com o resultado desse leetcode do código compilado com watcom.

Embora euphoria seja uma linguagem antiga, ela ainda demostra o quanto é rápida.

[Benchmark](./benchs.txt)
```
-----------------------------------
BENCH_SMALL_STRING_REPEATING
0.0000 ms  O(n2) | bench_small_string_repeating()
0.0000 ms  O(n) | bench_small_string_repeating()
0.0000 ms  O(n) | small allocation | bench_small_string_repeating()
-----------------------------------
BENCH_SMALL_STRING_NON_REPEATING
0.0000 ms  O(n2) | bench_small_string_non_repeating()
0.0000 ms  O(n) | bench_small_string_non_repeating()
0.0000 ms  O(n) | small allocation | bench_small_string_non_repeating()
-----------------------------------
BENCH_LARGE_STRING_REPEATING
0.7350 ms  O(n2) | bench_large_string_repeating()
0.2500 ms  O(n) | bench_large_string_repeating()
0.0150 ms  O(n) | small allocation | bench_large_string_repeating()
-----------------------------------
BENCH_LARGE_STRING_NON_REPEATING
0.7030 ms  O(n2) | bench_large_string_non_repeating()
0.2500 ms  O(n) | bench_large_string_non_repeating()
0.0160 ms  O(n) | small allocation | bench_large_string_non_repeating()
```

[Benchmark](./e2c_benchs.txt)
```
-----------------------------------
BENCH_SMALL_STRING_REPEATING
0.0000 ms  O(n2) | bench_small_string_repeating()
0.0000 ms  O(n) | bench_small_string_repeating()
0.0000 ms  O(n) | small allocation | bench_small_string_repeating()
-----------------------------------
BENCH_SMALL_STRING_NON_REPEATING
0.0000 ms  O(n2) | bench_small_string_non_repeating()
0.0000 ms  O(n) | bench_small_string_non_repeating()
0.0000 ms  O(n) | small allocation | bench_small_string_non_repeating()
-----------------------------------
BENCH_LARGE_STRING_REPEATING
0.1090 ms  O(n2) | bench_large_string_repeating()
0.0790 ms  O(n) | bench_large_string_repeating()
0.0000 ms  O(n) | small allocation | bench_large_string_repeating()
-----------------------------------
BENCH_LARGE_STRING_NON_REPEATING
0.1250 ms  O(n2) | bench_large_string_non_repeating()
0.0620 ms  O(n) | bench_large_string_non_repeating()
0.0160 ms  O(n) | small allocation | bench_large_string_non_repeating()
```