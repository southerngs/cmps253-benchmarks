# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org
#
# Contributed by Peter Bjarke Olsen
# Modified by Doug King
# Modified by Joseph LaFata

if(ARGV.size != 2)
  puts "Usage: rbx revcomp.rb <input_file> <logfile>"
  exit(1)
end

$logfile = File.new(ARGV[1].to_s, "w")
$inputfile = File.open(ARGV[0].to_s, "r")
#tracer = Rubinius::Optrace.new
#tracer.start

seq=""

def revcomp(seq)
  seq.reverse!.tr!('wsatugcyrkmbdhvnATUGCYRKMBDHVN','WSTAACGRYMKVHDBNTAACGRYMKVHDBN')
  stringlen=seq.length-1
  0.step(stringlen,60) {|x| $logfile.print seq[x,60] , "\n"}
end

$inputfile.each do |line|
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
