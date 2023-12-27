include "main.ex"
include std\console.e
include std\sequence.e

constant separator = repeat_pattern("-", 35) & "\n"
constant small_string_repeating = "abcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba"
constant small_string_non_repeating = "bcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba"
constant large_string_repeating = "abcdefghjiklmnopqrstuvwxyz" &  repeat_pattern("z", 1000000) & "zyxwvutsrqponmlkjihgfedcba"
constant large_string_non_repeating = "bcdefghjiklmnopqrstuvwxyz" &  repeat_pattern("z", 1000000) & "zyxwvutsrqponmlkjihgfedcba"


procedure main()
    
    
    puts(1, separator)
    
    bench_small_string_repeating()
    
    puts(1, separator)
    
    bench_small_string_non_repeating()
    
    puts(1, separator)
    
    bench_large_string_repeating()
    
    puts(1, separator)
    
    bench_large_string_non_repeating()

    wait_key()
    
end procedure
main()


procedure bench_small_string_repeating()
    puts(1, "BENCH_SMALL_STRING_REPEATING\n")

    atom t = time()
    
    main:firstUniqChar_1(small_string_repeating)
    
    printf(1, "%.4f ms  O(n2) | bench_small_string_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_2(small_string_repeating)
    
    printf(1, "%.4f ms  O(n) | bench_small_string_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_3(small_string_repeating)
    
    printf(1, "%.4f ms  O(n) | small allocation | bench_small_string_repeating()\n", {time() - t})
end procedure


procedure bench_small_string_non_repeating()
    puts(1, "BENCH_SMALL_STRING_NON_REPEATING\n")

    atom t = time()
    
    main:firstUniqChar_1(small_string_non_repeating)
    
    printf(1, "%.4f ms  O(n2) | bench_small_string_non_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_2(small_string_non_repeating)
    
    printf(1, "%.4f ms  O(n) | bench_small_string_non_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_3(small_string_non_repeating)
    
    printf(1, "%.4f ms  O(n) | small allocation | bench_small_string_non_repeating()\n", {time() - t})
end procedure


procedure bench_large_string_repeating()
    puts(1, "BENCH_LARGE_STRING_REPEATING\n")

    atom t = time()
    
    main:firstUniqChar_1(large_string_repeating)
    
    printf(1, "%.4f ms  O(n2) | bench_large_string_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_2(large_string_repeating)
    
    printf(1, "%.4f ms  O(n) | bench_large_string_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_3(large_string_repeating)
    
    printf(1, "%.4f ms  O(n) | small allocation | bench_large_string_repeating()\n", {time() - t})
end procedure

procedure bench_large_string_non_repeating()
    puts(1, "BENCH_LARGE_STRING_NON_REPEATING\n")

    atom t = time()
    
    main:firstUniqChar_1(large_string_non_repeating)
    
    printf(1, "%.4f ms  O(n2) | bench_large_string_non_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_2(large_string_non_repeating)
    
    printf(1, "%.4f ms  O(n) | bench_large_string_non_repeating()\n", {time() - t})
    
    t = time()
    
    main:firstUniqChar_3(large_string_non_repeating)
    
    printf(1, "%.4f ms  O(n) | small allocation | bench_large_string_non_repeating()\n", {time() - t})
end procedure
