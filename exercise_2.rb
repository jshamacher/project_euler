#!/usr/bin/env ruby

require_relative 'math'

current_index = 0
current_term = 0
sum = 0

while true do
  current_term = Math.fibonacci(current_index)
  break if current_term > 4000000

  sum += current_term if (current_term % 2) == 0
  current_index += 1
end

puts "Sum of even-valued fibonacci terms with value no greater than 4,000,000: #{sum}"
