# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org
#
# Contributed by Peter Bjarke Olsen
# Modified by Doug King
# Modified by Joseph LaFata

if(ARGV.size != 1)
  puts "Usage: rbx revcomp.rb <logfile> < <input_file>"
  exit(1)
end

$logfile = File.new(ARGV[0].to_s, "w")

seq=""

def revcomp(seq)
  seq.reverse!.tr!('wsatugcyrkmbdhvnATUGCYRKMBDHVN','WSTAACGRYMKVHDBNTAACGRYMKVHDBN')
  stringlen=seq.length-1
  0.step(stringlen,60) {|x| $logfile.print seq[x,60] , "\n"}
end

STDIN.each do |line|
  if line.include? '>'
    if !seq.empty?
      revcomp(seq)
      seq=""
    end
    $logfile.puts line
  else
    line.chomp!
    seq << line
  end
end
revcomp(seq)
