#!/bin/bash

if [ "$#" -lt "3" ]; then
  echo "Usage ./v8-bench.sh <v8-js_bin> <inputs_dir> <bench_root>"
  exit
fi

JSBIN=$1
INPUTS_DIR=$2
BENCH_ROOT=$3

runbench_param() {
  LOG=$1-$2.log
  BENCHCMD="$BENCH_ROOT/$1/$1-v8.js"
  PARAM=$2
  TIMECMD="/usr/bin/time -f '$1-$2: %e sec (%C)'"
  eval "$TIMECMD $JSBIN $BENCHCMD -- $PARAM > $LOG" 
}

runbench_input() {
  LOG=$1-$2.log
  BENCHCMD="$BENCH_ROOT/$1/$1-moz.js"
  PARAM=$INPUTS_DIR/fasta$2.txt
  TIMECMD="/usr/bin/time -f '$1-$2: %e sec (%C)'"
  eval "$TIMECMD $JSBIN $BENCHCMD < $PARAM > $LOG" 
}

# All bench with smallest input
runbench_param "binarytrees" "12"
runbench_param "fannkuchredux" "10"
runbench_param "fasta" "250000"
runbench_input "knucleotide" "250000"
runbench_param "nbody" "500000"
runbench_input "regexdna" "50000"
runbench_param "spectralnorm" "500"


