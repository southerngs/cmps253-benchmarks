#nbody benchmark

Each program should model the orbits of Jovian planets, using the same simple symplectic-integrator - see the [Java program](http://benchmarksgame.alioth.debian.org/u64/benchmark.php?test=nbody&lang=java).

For background information see [N-body problem](http://en.wikipedia.org/wiki/N-body_problem). Useful symplectic integrators are freely available, for example the [HNBody Symplectic Integration Package](http://janus.astro.umd.edu/HNBody/).

##Running
Specify the number of iterations of the nbody algorithm to simulate

###Ruby:
    rbx nbody.rb <logfile> <number of steps>
    

###Javascript:

##Parameters
The parameters for `n` tested on the website show that Ruby does very poorly compared to some other languages, including Javascript.

###Ruby
    500000      (about 5 seconds)
    5000000     (about 1 minute)
    50000000    (about 15 minutes)


