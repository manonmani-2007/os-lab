1.Greatest Among Three Numbers — greatest.sh
#!/bin/bash
echo "ENTER THREE NUMBERS"
read a b c
if [ $a -gt $b ] && [ $a -gt $c ]
then
echo "$a is greater"
elif [ $b -gt $c ]
then
echo "$b is greater"
else
echo "$c is greater"
fi
2.Factorial — factorial.sh
#!/bin/bash
echo "ENTER THE NUMBER:"
read n
fact=1
while [ $n -gt 1 ]
do
fact=$((fact * n))
n=$((n - 1))
done
echo "FACTORIAL OF THE GIVEN NUMBER IS $fact"
3.Sum of Odd Numbers — oddsum.sh
#!/bin/bash
echo "ENTER THE RANGE:"
read n
x=1
sum=0
while [ $x -le $n ]
do
sum=$((sum + x))
x=$((x + 2))
done
echo "SUM = $sum"
4. Fibonacci Series — fibonacci.sh
#!/bin/bash
echo "ENTER THE LIMIT:"
read n
p=-1
q=1
i=1
while [ $i -le $n ]
do
r=$((p + q))
p=$q
q=$r
echo "$r"
i=$((i + 1))
done
5. Arithmetic Calculator — calculator.sh
#!/bin/bash
echo "ENTER THE VALUE OF A:"
read a
echo "ENTER THE VALUE OF B:"
read b
echo "ENTER THE OPTION TO PERFORM"
echo "1. ADDITION"
echo "2. SUBTRACTION"
echo "3. MULTIPLICATION"
echo "4. DIVISION"
read op
case "$op" in
1) echo "Result = $((a + b))" ;;
2) echo "Result = $((a - b))" ;;
3) echo "Result = $((a * b))" ;;
4) echo "Result = $((a / b))" ;;
*) echo "Invalid Option" ;;
6. Largest Digit — largestdigit.sh
#!/bin/bash
echo "ENTER THE NUMBER"
read a
max=0
while [ $a -gt 0 ]
do
r=$((a % 10))
if [ $r -gt $max ]
then
max=$r
fi
a=$((a / 10))
done
echo "THE LARGEST DIGIT OF THE NUMBER: $max"
7. Palindrome String — palindrome.sh
#!/bin/bash
echo "ENTER THE STRING TO CHECK PALINDROME"
read str
len=$(echo -n "$str" | wc -c)
i=1
j=$((len / 2))
while [ $i -le $j ]
do
k=$(echo "$str" | cut -c $i)
l=$(echo "$str" | cut -c $len)
if [ "$k" != "$l" ]
then
echo "$str is not a palindrome"
exit
fi
i=$((i + 1))
len=$((len - 1))
done
echo "$str is a palindrome"
8. Reverse of Number — reverse.sh
#!/bin/bash
echo "ENTER THE NUMBER"
read n
rnum=0
while [ $n -ne 0 ]
do
remainder=$((n % 10))
rnum=$((rnum * 10 + remainder))
n=$((n / 10))
done
echo "REVERSE OF THE NUMBER IS $rnum"


