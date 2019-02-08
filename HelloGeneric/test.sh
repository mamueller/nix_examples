#!/bin/bash
a=("markus fritz")
b=("paul friedrich")
c=("${a} ${b}")
echo ${c} 
for s in $a $b; do
	echo ${s}
done
