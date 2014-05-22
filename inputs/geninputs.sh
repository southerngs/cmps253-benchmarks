#!/bin/bash

make

count=("50000" "500000" "5000000" "250000" "2500000" "25000000")
for i in ${count[@]}
do
  echo "Generting sequence for ${i} elements"
  ./fasta-gen fasta${i}.txt ${i} 
done

