module main

pub fn first_uniq_char_3(s string) int {
	mut m := [26]u8{}

	for c in s {
		m[c - `a`]++
	}

	for i, c in s {
		if m[c - `a`] == 1 {
			return i
		}
	}
	return 0
}

pub fn first_uniq_char_2(s string) int {
	mut m := map[u8]u8{}

	for c in s {
		m[c]++
	}

	for i, c in s {
		if m[c] == 1 {
			return i
		}
	}
	return 0
}

pub fn first_uniq_char(s string) int {
	mfor: for i, c in s {
		for sub_i, cc in s {
			if sub_i != i && c == cc {
				continue mfor
			}
		}

		return i
	}

	return 0
}