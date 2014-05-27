#!/bin/bash

if [ "$#" -lt "2" ]; then
  echo "Usage ./ruby-bench.sh <ruby_bin> <inputs_dir>"
  exit
fi

#RUBYBIN=/local/gsouther/projs/cmps253-rbx/bin/rbx
RUBYBIN=$1
INPUTS_DIR=$2
BENCHCMD="../${BENCH}/${BENCH}.rb"

runbench_param() {
  LOG=$1-$2.log
  BENCHCMD="../$1/$1.rb"
  PARAM=$2
  TIMECMD="/usr/bin/time -f '$1-$2: %e sec (%C)'"
  eval "$TIMECMD $RUBYBIN $BENCHCMD $PARAM $LOG" 
}

runbench_input() {
  LOG=$1-$2.log
  BENCHCMD="../$1/$1.rb"
  PARAM=$INPUTS_DIR/fasta$2.txt
  TIMECMD="/usr/bin/time -f '$1-$2: %e sec (%C)'"
  eval "$TIMECMD $RUBYBIN $BENCHCMD $PARAM $LOG" 
}

# All bench with smallest input
runbench_param "binarytrees" "12"
runbench_param "fannkuchredux" "10"
runbench_param "fasta" "250000"
runbench_input "knucleotide" "250000"
runbench_param "nbody" "500000"
runbench_input "regexdna" "50000"
runbench_param "spectralnorm" "500"

#binarytrees
runbench_param "binarytrees" "12"
runbench_param "binarytrees" "12"
runbench_param "binarytrees" "16"
runbench_param "binarytrees" "20"

#fannkuchredux
runbench_param "fannkuchredux" "10"
runbench_param "fannkuchredux" "10"
runbench_param "fannkuchredux" "11"
runbench_param "fannkuchredux" "12"

#fasta
runbench_param "fasta" "250000"
runbench_param "fasta" "250000"
runbench_param "fasta" "2500000"
runbench_param "fasta" "25000000"

#knucleotide
runbench_input "knucleotide" "250000"
runbench_input "knucleotide" "250000"
runbench_input "knucleotide" "2500000"
runbench_input "knucleotide" "25000000"

#nbody
runbench_param "nbody" "500000"
runbench_param "nbody" "500000"
runbench_param "nbody" "5000000"
runbench_param "nbody" "50000000"

#regexdan
runbench_input "regexdna" "50000"
runbench_input "regexdna" "50000"
runbench_input "regexdna" "500000"
runbench_input "regexdna" "5000000"

#Note that revcomp is too slow to run with Rubnius right now

#spectralnorm
runbench_param "spectralnorm" "500"
runbench_param "spectralnorm" "500"
runbench_param "spectralnorm" "3000"
runbench_param "spectralnorm" "5500"

