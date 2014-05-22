# The Computer Language Benchmarks Game
# http://benchmarksgame.alioth.debian.org
#
# contributed by Aaron Tavistock

if(ARGV.empty?)
  puts "Usage rbx knucleotide <logfile> < input_file.txt"
  exit
end

logfile = File.new(ARGV[0].to_s, "w")

def frequency(seq, keys)
  counts = Hash.new(0)
  keys.each do |key|
    last_index = 0
    while last_index = seq.index(key, last_index+1)
      counts[key] += 1
    end
  end
  counts
end

def percentage(seq, keys)
  frequency(seq, keys).sort { |a,b| b[1] <=> a[1] }.map do |key, value|
    "%s %.3f" % [ key.upcase, ( (value*100).to_f / seq.size) ]
  end
end

def count(seq, keys)
  frequency(seq, keys).map do |key, value|
    "#{value.to_s}\t#{key.upcase}"
  end
end

_, seq = STDIN.read.scan(/(\n>THREE[^\n]*\n)([^>]*)\n/).flatten
seq.force_encoding('ASCII-8BIT')
seq.gsub!(/\s/, '')

singles = %w(a t c g)
doubles = singles.map { |a| singles.map { |b| "#{a}#{b}" }}.flatten
chains  = %w(ggt ggta ggtatt ggtattttaatt ggtattttaatttatagt)

logfile.print "#{percentage(seq, singles).join("\n")}\n\n"
logfile.print "#{percentage(seq, doubles).join("\n")}\n\n"
logfile.print "#{count(seq, chains).join("\n")}\n"

