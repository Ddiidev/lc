namespace _387;

using System;
using System.Diagnostics;
using System.Reflection;

internal class Program
{
	const string SmallStringRepeating = "abcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba";
	const string SmallStringNonRepeating = "bcdefghjiklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba";
	static readonly string LargeStringRepeating = $"abcdefghjiklmnopqrstuvwxyz{new string('z', 100000)}zyxwvutsrqponmlkjihgfedcba";
	static readonly string LargeStringNonRepeating = $"abcdefghjiklmnopqrstuvwxyz{new string('z', 100000)}zyxwvutsrqponmlkjihgfedcba";

	static void Main(string[] args)
	{
		var separator = new string('-', 40);

		Console.WriteLine(separator);

		BenchSmallStringRepeating();

		Console.WriteLine(separator);

		BenchSmallStringNonRepeating();

		Console.WriteLine(separator);

		BenchLargeStringRepeating();

		Console.WriteLine(separator);

		BenchLargeStringNonRepeating();
	}


	static void BenchSmallStringRepeating()
	{
		var nameMethod = MethodBase.GetCurrentMethod()!.Name;
		Console.WriteLine(nameMethod.ToUpper());

		var st = new Stopwatch();

		st.Start();

		Funcs.FirstUniqChar_1(SmallStringRepeating);

		st.Stop();

		var resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", "."); Console.WriteLine($"{resultT:F4}ms O(n²) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_2(SmallStringRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_3(SmallStringRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | small allocation | {nameMethod}()");
	}

	static void BenchSmallStringNonRepeating()
	{
		var nameMethod = MethodBase.GetCurrentMethod()!.Name;
		Console.WriteLine(nameMethod.ToUpper());

		var st = new Stopwatch();

		st.Start();

		Funcs.FirstUniqChar_1(SmallStringNonRepeating);

		st.Stop();

		var resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", "."); Console.WriteLine($"{resultT:F4}ms O(n²) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_2(SmallStringNonRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4} ms O(n) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_3(SmallStringNonRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | small allocation | {nameMethod}()");
	}

	static void BenchLargeStringRepeating()
	{
		var nameMethod = MethodBase.GetCurrentMethod()!.Name;
		Console.WriteLine(nameMethod.ToUpper());

		var st = new Stopwatch();

		st.Start();

		Funcs.FirstUniqChar_1(LargeStringRepeating);

		st.Stop();

		var resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", "."); Console.WriteLine($"{resultT:F4}ms O(n²) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_2(LargeStringRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_3(LargeStringRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | small allocation | {nameMethod}()");
	}
	static void BenchLargeStringNonRepeating()
	{
		var nameMethod = MethodBase.GetCurrentMethod()!.Name;
		Console.WriteLine(nameMethod.ToUpper());

		var st = new Stopwatch();

		st.Start();

		Funcs.FirstUniqChar_1(LargeStringNonRepeating);

		st.Stop();

		var resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", "."); Console.WriteLine($"{resultT:F4}ms O(n²) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_2(LargeStringNonRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | {nameMethod}()");
		st.Restart();

		Funcs.FirstUniqChar_3(LargeStringNonRepeating);

		st.Stop();

		resultT = (st.ElapsedTicks / 1000.0).ToString().Replace(",", ".");
		Console.WriteLine($"{resultT:F4}ms O(n) | small allocation | {nameMethod}()");
	}
}