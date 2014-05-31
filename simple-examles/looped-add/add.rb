# This test case shows a simple function that adds
# 4 numbers together.  The function is called multiple
# times in a loop and the results is added to the total.
#
# This allows for testing what sort of compiler optimizations
# are applied, and the loop allows for specifiying a long enough
# runtime to ensure that the JIT runs.

count = ARGV[0].to_i

def compute_val
  tmp = 4 + 5 + 6 + 7 
end

total = 0
count.times do
  total += compute_val
end

puts total

