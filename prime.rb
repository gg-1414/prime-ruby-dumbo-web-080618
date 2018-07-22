require 'benchmark'
require 'bigdecimal/math'

def prime?(number)
  if number < 2 
    return false 
  else 
    (2..number-1).to_a.all? do |counter|
      number % counter != 0 
    end 
  end
end

# calculate pi to 10k digits
puts Benchmark.measure { BigMath.PI(10_000) }
