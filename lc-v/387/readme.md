[vlang](https://vlang.io)

[Benchmark](./benchs.txt)

```
BENCH_SMALL_STRING_REPEATING
 SPENT     0.001 ms in O(n²) | bench_small_string_repeating()
 SPENT     0.008 ms in O(n)  | bench_small_string_repeating()
 SPENT     0.000 ms in O(n)  | small alocation | bench_small_string_repeating()
----------------------------------------
BENCH_SMALL_STRING_NON_REPEATING
 SPENT     0.001 ms in O(n²) | bench_small_string_non_repeating()
 SPENT     0.007 ms in O(n)  | bench_small_string_non_repeating()
 SPENT     0.001 ms in O(n)  | small alocation | bench_small_string_non_repeating()
----------------------------------------
BENCH_LARGE_STRING_REPEATING
 SPENT     0.003 ms in O(n²) | bench_large_string_repeating()
 SPENT     5.021 ms in O(n)  | bench_large_string_repeating()
 SPENT     2.334 ms in O(n)  | small alocation | bench_large_string_repeating()
----------------------------------------
BENCH_LARGE_STRING_NON_REPEATING
 SPENT     0.003 ms in O(n²) | bench_large_string_non_repeating()
 SPENT     5.740 ms in O(n)  | bench_large_string_non_repeating()
 SPENT     2.302 ms in O(n)  | small alocation | bench_large_string_non_repeating()
----------------------------------------
```