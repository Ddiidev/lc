module main

import benchmark

const small_string_repeating    = "abcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba"
const small_string_non_repeating = "bcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba"

fn main() {
	separator := "-".repeat(40)

	bench_small_string_repeating()

	println(separator)

	bench_small_string_non_repeating()

	println(separator)

	bench_large_string_repeating()

	println(separator)

	bench_large_string_non_repeating()

	println(separator)
}


fn bench_small_string_repeating() {
	println('${@FN.to_upper()}')

	mut b := benchmark.start()

	first_uniq_char(small_string_repeating)

	b.measure("O(n²) | ${@FN}()")

	first_uniq_char_2(small_string_repeating)

	b.measure("O(n)  | ${@FN}()")

	first_uniq_char_3(small_string_repeating)

	b.measure("O(n)  | small alocation | ${@FN}()")

	b.stop()
}

fn bench_small_string_non_repeating() {
	println('${@FN.to_upper()}')

	mut b := benchmark.start()

	first_uniq_char(small_string_non_repeating)

	b.measure("O(n²) | ${@FN}()")

	first_uniq_char_2(small_string_non_repeating)

	b.measure("O(n)  | ${@FN}()")

	first_uniq_char_3(small_string_non_repeating)

	b.measure("O(n)  | small alocation | ${@FN}()")

	b.stop()
}

fn bench_large_string_repeating() {
	println('${@FN.to_upper()}')

	large_string_repeating    := "abcdefghjiklmnopqrstuvwxyz" +  "z".repeat(1000000) + "zyxwvutsrqponmlkjihgfedcba"

	mut b := benchmark.start()

	first_uniq_char(large_string_repeating)

	b.measure("O(n²) | ${@FN}()")

	first_uniq_char_2(large_string_repeating)

	b.measure("O(n)  | ${@FN}()")

	first_uniq_char_3(large_string_repeating)

	b.measure("O(n)  | small alocation | ${@FN}()")

	b.stop()
}

fn bench_large_string_non_repeating() {
	println('${@FN.to_upper()}')

	bench_large_string_non_repeating    := "bcdefghjiklmnopqrstuvwxyz" + "z".repeat(1000000) + "zyxwvutsrqponmlkjihgfedcba"

	mut b := benchmark.start()

	first_uniq_char(bench_large_string_non_repeating)

	b.measure("O(n²) | ${@FN}()")

	first_uniq_char_2(bench_large_string_non_repeating)

	b.measure("O(n)  | ${@FN}()")

	first_uniq_char_3(bench_large_string_non_repeating)

	b.measure("O(n)  | small alocation | ${@FN}()")

	b.stop()
}