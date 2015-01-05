'CScript
'Fibonachi Test
'Sebastian Esp

Dim i
Dim fibonacci
Dim previousNum1
Dim previousNum2
Dim arrFibonacci
Dim sum

fibonacci = 1

ReDim arrFibonacci(1)
arrFibonacci(0) = 1 
arrFibonacci(1) = 2 

Do While fibonacci < 4000000
	If(i = 1) Then
		WScript.Echo("2")
		sum = 2
	End If
	If(fibonacci Mod 2 = 0) Then
		WScript.Echo(fibonacci)
		sum = sum + fibonacci
	End if
	'WScript.Echo(fibonacci)
	previousNum1 = arrFibonacci(0)
	previousNum2 = arrFibonacci(1)
	fibonacci = previousNum1 + previousNum2
	arrFibonacci(1) = fibonacci 
	arrFibonacci(0) = previousNum2
	i = i + 1
Loop

WScript.Echo(vbNewLine & "The sum of all even numbers in the fibonacci sequence under 4.000.000 is: " & vbNewLine & sum)