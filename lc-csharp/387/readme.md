[C#](https://dotnet.microsoft.com/pt-br/languages/csharp)

Fiz 3 benchmark com tipos de compilações diferente.
Fiquei impressionado com o tempo de execução compilado AOT + ReadyToRun.
Teve um desempenho muito parecido com aplicações compiladas em C.

[Benchmark .NET 8 Runtime](./benchs.txt)
```
----------------------------------------
BENCHSMALLSTRINGREPEATING
1.873ms O(n²) | BenchSmallStringRepeating()
18.69ms O(n) | BenchSmallStringRepeating()
0.832ms O(n) | small allocation | BenchSmallStringRepeating()
----------------------------------------
BENCHSMALLSTRINGNONREPEATING
0.185ms O(n²) | BenchSmallStringNonRepeating()
0.068 ms O(n) | BenchSmallStringNonRepeating()
0.011ms O(n) | small allocation | BenchSmallStringNonRepeating()
----------------------------------------
BENCHLARGESTRINGREPEATING
7.049ms O(n²) | BenchLargeStringRepeating()
55.503ms O(n) | BenchLargeStringRepeating()
4.148ms O(n) | small allocation | BenchLargeStringRepeating()
----------------------------------------
BENCHLARGESTRINGNONREPEATING
0.825ms O(n²) | BenchLargeStringNonRepeating()
43.937ms O(n) | BenchLargeStringNonRepeating()
0.661ms O(n) | small allocation | BenchLargeStringNonRepeating()
```

[Benchmark .NET 8 AOT](./AOT_benchs.txt)
```
----------------------------------------
BENCHSMALLSTRINGREPEATING
1.148ms O(n²) | BenchSmallStringRepeating()
15.197ms O(n) | BenchSmallStringRepeating()
0.941ms O(n) | small allocation | BenchSmallStringRepeating()
----------------------------------------
BENCHSMALLSTRINGNONREPEATING
0.159ms O(n²) | BenchSmallStringNonRepeating()
0.127 ms O(n) | BenchSmallStringNonRepeating()
0.009ms O(n) | small allocation | BenchSmallStringNonRepeating()
----------------------------------------
BENCHLARGESTRINGREPEATING
7.956ms O(n²) | BenchLargeStringRepeating()
60.713ms O(n) | BenchLargeStringRepeating()
3.856ms O(n) | small allocation | BenchLargeStringRepeating()
----------------------------------------
BENCHLARGESTRINGNONREPEATING
0.819ms O(n²) | BenchLargeStringNonRepeating()
58.015ms O(n) | BenchLargeStringNonRepeating()
0.663ms O(n) | small allocation | BenchLargeStringNonRepeating()
```

[Benchmark .NET 8 AOT ReadyToRun](./AOT_ReadyToRun_benchs.txt)
```
----------------------------------------
BENCHSMALLSTRINGREPEATING
0.242ms O(n²) | BenchSmallStringRepeating()
3.422ms O(n) | BenchSmallStringRepeating()
0.019ms O(n) | small allocation | BenchSmallStringRepeating()
----------------------------------------
BENCHSMALLSTRINGNONREPEATING
0.035ms O(n²) | BenchSmallStringNonRepeating()
0.106 ms O(n) | BenchSmallStringNonRepeating()
0.008ms O(n) | small allocation | BenchSmallStringNonRepeating()
----------------------------------------
BENCHLARGESTRINGREPEATING
4.944ms O(n²) | BenchLargeStringRepeating()
6.948ms O(n) | BenchLargeStringRepeating()
0.432ms O(n) | small allocation | BenchLargeStringRepeating()
----------------------------------------
BENCHLARGESTRINGNONREPEATING
0.601ms O(n²) | BenchLargeStringNonRepeating()
8.143ms O(n) | BenchLargeStringNonRepeating()
0.479ms O(n) | small allocation | BenchLargeStringNonRepeating()
```