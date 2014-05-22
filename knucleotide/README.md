#K-nucleotide benchmark

##Algorithm
Each program should

* read line-by-line a redirected FASTA format file from stdin
* extract DNA sequence THREE
* **define a procedure/function** to update a hashtable of k-nucleotide keys and count values, for a particular reading-frame — even though we'll combine k-nucleotide counts for all reading-frames (grow the **hashtable** from a small default size)
* use that procedure/function and hashtable to
    * count all the 1-nucleotide and 2-nucleotide sequences, and write the code and percentage frequency, sorted by descending frequency and then ascending k-nucleotide key

    * count all the 3- 4- 6- 12- and 18-nucleotide sequences, and write the count and code for the specific sequences `GGT GGTA GGTATT GGTATTTTAATT GGTATTTTAATTTATAGT`

##Running
The benchmark reads from `stdin`. To run use a file that is generated from the fasta benchmark and then redirect the input to `stdin`.

###Ruby:

    rbx knucleotide.rb < <input_file.txt>

###Javascript:

##Parameters

###Ruby
Use input files in the `input` directory.  Suggested sizes are:

    fasta250000.txt     (about 2 seconds) 
    fasta2500000.txt    (about 15 seconds)
    fasta25000000.txt   (about 2 minutes)

