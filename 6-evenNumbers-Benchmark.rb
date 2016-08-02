# 6. Write a function in Ruby  that takes in a number n and returns the first n even numbers.
# Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

def evenLoop(n)
  i = 0
  while i < n*2 do
    return i
    i+=2
  end
end

def evenRecursion(n)
  k = n*2
  if n < 0 || k == 0
    return 0
  else
    evenRecursion(n-1)
    return k-2
  end
end

# evenLoop(5)
# p "-----------"
# evenRecursion(5)

require 'Benchmark'
Benchmark.bm do |x|
  x.report do
    1000.times { evenLoop(10) }
  end
  x.report do
    1000.times { evenRecursion(10) }
  end
end

# | ~/codecore/ruby/day11-quiz| 🍌  ruby 6-evenNumbers-Benchmark.rb
#        user     system      total        real
#    0.000000   0.000000   0.000000 (  0.000136)
#    0.000000   0.000000   0.000000 (  0.000977)
# _______________________________________________

#Using a loop is faster as per benchmark result above
