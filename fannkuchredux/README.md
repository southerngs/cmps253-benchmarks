#Fannkuch benchmark

##Algorithm:

The fannkuch benchmark is defined by programs in [Performing Lisp Analysis of the FANNKUCH Benchmark](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.35.5124), Kenneth R. Anderson and Duane Rettig.

Each program should

* Take a permutation of {1,...,n}, for example: {4,2,1,5,3}.
* Take the first element, here 4, and reverse the order of the first 4 elements: {5,1,2,4,3}.
* Repeat this until the first element is a 1, so flipping won't change anything more: {3,4,2,1,5}, {2,4,3,1,5}, {4,2,3,1,5}, {1,3,2,4,5}.
* Count the number of flips, here 5.
* Keep a checksum
* checksum = checksum + (if permutation_index is even then flips_count else -flips_count)
* checksum = checksum + (toggle_sign_-1_1 * flips_count)
* Do this for all n! permutations, and record the maximum number of flips needed for any permutation.

##Running:

Ruby:

    rbx fannkuchredux.rb <size>

Javascript:

##Parameters:

Suggested values for `size` parameters are: `10, 11, 12`.  This benchmark is very slow for Ruby so `10` takes around 20 second, `11` takes about 3 minutes, and `12` takes over an hour.  Thus suggest using `10` for Ruby.
