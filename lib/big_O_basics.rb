require 'pry'
require 'benchmark'

class BigO
  attr_accessor :my_array1, :my_array2, :my_array4,:my_array3,
                :my_array5,:my_array6,:my_array7,:my_array8,:my_array9

  def initialize
    @my_array1 = (1..10)
    @my_array2 = (1..100)
    @my_array3 = (1..1000)
    @my_array4 = (1..10000)
    @my_array5 = (1..100000)
    @my_array6 = (1..1000000)
    @my_array7 = (1..10000000)
    @my_array8 = (1..100000000)
    @my_array9 = (1..1000000000)
  end

  #constant time O(1)
  def self.constant_time(input,value)
    if input[0] == value
      return true
    else
      return false
    end
  end

  #O(N)
  def self.linear_time(input, value)
    value_location = "I'm not here"
    input.each_with_index do |element_in_input, index|
      if element_in_input == value.to_i
        value_location = "I'm at position #{index}"
      end
    end
    puts value_location
  end

  #O(N^2)
  def self.exponential_time(input1,input2,value)
    duplicate = "No duplicates"
    input1.each do |elements_in_input_1|
      input2.each do |elements_in_input_2|
        if elements_in_input_2 == elements_in_input_1
          duplicate = "DUPLICATE VALUE"
        end
      end
    end
    duplicate
  end

  #O(log(N))
  #see binary_search.rb
end

big = BigO.new
# Benchmark.measure { BigO.linear_time(big.my_array1, "hello") }
# Benchmark.measure { BigO.linear_time(big.my_array2, "hello") }
# Benchmark.measure { BigO.linear_time(big.my_array3, "hello") }
# Benchmark.measure { BigO.linear_time(big.my_array4, "hello") }
# Benchmark.measure { BigO.linear_time(big.my_array5, "hello") }
# Benchmark.measure { BigO.linear_time(big.my_array6, "hello") }
# Benchmark.measure { BigO.linear_time(big.my_array7, "hello") }
# #Benchmark.measure { BigO.linear_time(big.my_array8, "hello") }
#Benchmark.measure { BigO.linear_time(big.my_array9, "hello") }
