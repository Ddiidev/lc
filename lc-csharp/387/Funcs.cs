namespace _387;
public static class Funcs
{

	public static int FirstUniqChar_1(string s)
	{
		for (int i = 0; i < s.Length-1; i++)
		{
		teste:
			for (int j = 0; j < s.Length-1; j++)
				if (i != j && s[i] == s[j])
				{
					i++;
					// Preferi utilizar "goto" ao invés de utilizar variável de controle.
					// Tem o mesmo efeito e seguro igualmente.
					goto teste;
				}

			return i;
		}

		return 0;
	}

	public static int FirstUniqChar_2(string s)
	{
		var d = new Dictionary<char, short>();
		short value;

		for (int i = 0; i < s.Length - 1; i++)
		{
			value = d.TryGetValue(s[i], out value) ? value : (short)0;
			d[s[i]] = ++value;
		}

		for (int i = 0; i < s.Length - 1; i++)
			if (d[s[i]] == 1)
				return i;

		return 0;
	}

	public static int FirstUniqChar_3(string s)
	{
		var obj = new int[26];

		for (int i = 0; i < s.Length - 1; i++)
			obj[s[i] - 'a']++;

		for (int i = 0; i < s.Length - 1; i++)
			if (obj[s[i] - 'a'] == 1)
				return i;

		return 0;
	}
}
