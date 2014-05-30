This directory contains scripts for running Ruby, Mozilla Javascript, and Chrome V8 Javascript engines with the benchmarks.

##Ruby

To run use command

   ./ruby-bench.sh <ruby_bin> <inputs_dir> <bench_root>

This script will create log files so it is useful to run in a separate run directory.
The `ruby_bin` parameter refers to the binary for running Ruby.  For Rubinius it is
the path to the rbx binary.

##Mozilla Javascript

   ./moz-bench.sh <moz-js_bin> <inputs_dir> <bench_root>

The `moz-js_bin` is the `js` command line binary that is created when compiling Spidermonkey.
The typical location is: `gecko-dev/js/src/build-release/dist/bin/js`

##Chrome V8 Javascript

    ./v8-bench.sh <v8-js_bin> <inputs_dir> <bench_root>

The `v8-js_bin` is the command line binary build for V8 javascript.  It is typically:
`"v8/out/x64.release/d8 --nodebugger"`.  Note that the `--nodebugger` option is supplied
to improve performance during benchmarking.

##Java
    ./java-bench.sh <java_bin> <inputs_dir> <bench_root>
