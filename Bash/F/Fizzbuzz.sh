#!/usr/bin/bash

counter=1

while expr $counter '<=' 100 >/dev/null; do
	w=false
	expr $counter % 3 = 0 >/dev/null && { printf Fizz; w=true; }
	expr $counter % 5 = 0 >/dev/null && { printf Buzz; w=true; }
	if $w; then echo; else echo $counter; fi
	counter=`expr $counter + 1`
done
