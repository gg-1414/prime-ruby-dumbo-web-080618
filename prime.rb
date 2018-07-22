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


# def prime?(num)
#   if num < 0 or num == 0 or num == 1
#     return false
#   else
#     (2..num-1).to_a.all? do |possible_factor|
#       num % possible_factor != 0
#     end
#   end
# end



# calculate pi to 10k digits
puts Benchmark.measure { BigMath.PI(10_000) }
