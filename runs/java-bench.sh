#!/bin/bash

if [ "$#" -lt "5" ]; then
  echo "Usage ./java-bench.sh <java_bin> <inputs_dir> <bench_root> <test|full> <javac_bin>"
  exit
fi

JAVABIN=$1
INPUTS_DIR=$2
BENCH_ROOT=$3
JAVACBIN=$5

runbench_param() {
  LOG=$1-$2.log
  BENCHSRC="$BENCH_ROOT/$1/$1.java"
  BENCHNAME=$1
  PARAM=$2
  TIMECMD="/usr/bin/time -f '$1-$2: %e sec (%C)'"
  eval "$JAVACBIN $BENCHSRC"
  eval "$TIMECMD $JAVABIN -cp $BENCH_ROOT/$BENCHNAME $BENCHNAME $PARAM > $LOG"
}

runbench_input() {
  LOG=$1-$2.log
  BENCHSRC="$BENCH_ROOT/$1/$1.java"
  BENCHNAME=$1
  PARAM=$INPUTS_DIR/fasta$2.txt
  TIMECMD="/usr/bin/time -f '$1-$2: %e sec (%C)'"
  eval "$JAVACBIN $BENCHSRC"
  eval "$TIMECMD $JAVABIN -cp $BENCH_ROOT/$BENCHNAME $BENCHNAME < $PARAM > $LOG" 
}

if [ "$4" != "full" ]
then
  # All bench with smallest input
  runbench_param "binarytrees" "12"
  runbench_param "fannkuchredux" "10"
  runbench_param "fasta" "250000"
  runbench_input "knucleotide" "250000"
  runbench_param "nbody" "500000"
  runbench_input "regexdna" "50000"
  runbench_param "spectralnorm" "500"
else
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
fi

