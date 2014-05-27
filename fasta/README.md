#Fasta benchmark

##Algorithm:

Each program should

* generate DNA sequences, by copying from a given sequence
* generate DNA sequences, by weighted random selection from 2 alphabets
* convert the expected probability of selecting each nucleotide into cumulative probabilities
* match a random number against those cumulative probabilities to select each nucleotide (use linear search or binary search)
* use this linear congruential generator to calculate a random number each time a nucleotide needs to be selected (don't cache the random number sequence)

```
IM = 139968
IA = 3877
IC = 29573
Seed = 42
 	
Random (Max)
   Seed = (Seed * IA + IC) modulo IM
   = Max * Seed / IM
```

* write 3 sequences line-by-line in FASTA format

##Running:
The benchmark prints out the number of DNA sequenes specified.  For Ruby this is modified to print them to a file so that it won't conflict with diagnostic information printed to stdout

Ruby:

    rbx fasta.rb <output file> <number of seq>

  
Javascript:


##Parameters:

Suggested parameters for number of sequences are:

Ruby:

    250000    (about 1.5 second)
    2500000   (about 20 seconds)
    25000000  (about 3 minutes)


