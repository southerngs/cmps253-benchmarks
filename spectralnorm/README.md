#spectral-norm benchmark

Each program should calculate the spectral norm of an infinite matrix A, with entries a11=1, a12=1/2, a21=1/3, a13=1/4, a22=1/5, a31=1/6, etc

* Each program *must* implement 4 separate functions / procedures / methods like the C# program.
* For more information see challenge #3 in Eric W. Weisstein, "Hundred-Dollar, * Hundred-Digit Challenge Problems" and "Spectral Norm".
* From MathWorld--A Wolfram Web Resource.  
http://mathworld.wolfram.com/Hundred-DollarHundred-DigitChallengeProblems.html
http://mathworld.wolfram.com/SpectralNorm.html

##Running
Program takes a single parameter `n` which specifies the size of the array that is operated on.

###Ruby:
Specify single parameter `n` for example:

    rbx spectralnorm.rb 500

###Javascript:

##Parameters
Single parameter `n`

###Ruby
    500    (about 3 seconds)
    3000   (about 40 seconds)
    5500   (about 8 minutes)

