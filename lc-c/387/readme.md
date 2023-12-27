[C](https://pt.wikipedia.org/wiki/C_(linguagem_de_programa%C3%A7%C3%A3o))

[Benchmark](./benchs.txt)
```
--------------------------------------------------
BENCH_SMALL_STRING_REPEATING
0.000000  O(n²) | bench_small_string_repeating()
0.000000  O(n) | bench_small_string_repeating()
0.000000  O(n) | small allocation | bench_small_string_repeating()
--------------------------------------------------
BENCH_SMALL_STRING_NON_REPEATING
0.000000  O(n²) | bench_small_string_non_repeating()
0.000000  O(n) | bench_small_string_non_repeating()
0.000000  O(n) | small allocation | bench_small_string_non_repeating()
--------------------------------------------------
BENCH_LARGE_STRING_REPEATING
0.059000  O(n²) | bench_large_string_repeating()
0.010000  O(n) | bench_large_string_repeating()
0.003000  O(n) | small allocation | bench_large_string_repeating()
--------------------------------------------------
BENCH_LARGE_STRING_NON_REPEATING
0.057000  O(n²) | bench_large_string_non_repeating()
0.008000  O(n) | bench_large_string_non_repeating()
0.003000  O(n) | small allocation | bench_large_string_non_repeating()
```

_Foi muito gostoso trabalhar com, depois de muitos anos estava muuito enferrujado_ 