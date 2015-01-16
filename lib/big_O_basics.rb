require 'pry'
require 'benchmark'
class BigO

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
