#! bin/bash
echo "The Fibonacci series is : "
read N a b
for (( i=0; i<N; i++ ))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
exit 0
