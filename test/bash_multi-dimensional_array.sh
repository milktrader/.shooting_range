#!/bin/bash
declare -A matrix
num_rows=12
num_columns=3

for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        matrix[$i,$j]="../src/c/boom"
    done
done

echo $matrix

