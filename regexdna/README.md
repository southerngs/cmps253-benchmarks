#regex-dna benchmark

Each program should:

* read all of a redirected FASTA format file from stdin, and record the sequence length
* use the same simple regex pattern match-replace to remove FASTA sequence descriptions and all linefeed characters, and record the sequence length
* use the same simple regex patterns, representing DNA 8-mers and their reverse complement (with a wildcard in one position), and (one pattern at a time) count matches in the redirected file
* write the regex pattern and count
* use the same simple regex patterns to make IUB code alternatives explicit, and (one pattern at a time) match-replace the pattern in the redirect file, and record the sequence length
* write the 3 recorded sequence lengths


##Running
Program reads input from `stdin`.  Run with fasta file redirected to `stdin`.  Write output to a logfile that is specified on the command line.

###Ruby:
Specify an output file and an input file redirected to stdin.  For example:

    rbx regexdn.rb <out.log> < ../inputs/fasta50000.txt
###Javascript:

##Parameters
Use input file redirected from `stdin`

###Ruby
    fasta50000    (about 0.5 seconds)
    fasta500000   (about 3 seconds)
    fasta5000000  (about 20 seconds)
    

