#given a sorted array, find the element
require 'pry'
require 'benchmark'

class Search
  attr_accessor :my_array1, :my_array2, :my_array4,:my_array3,
                :my_array5,:my_array6,:my_array7,:my_array8,:my_array9

  def initialize
    @my_array1 = (1..10).to_a
    @my_array2 = (1..100).to_a
    @my_array3 = (1..1000).to_a
    @my_array4 = (1..10000).to_a
    @my_array5 = (1..100000).to_a
    @my_array6 = (1..1000000).to_a
    #@my_array7 = (1..10000000)
    #@my_array8 = (1..100000000)
    #@my_array9 = (1..1000000000)
  end

  def binary_search(elem,array)
    middle_index = (array.size/2).floor
    if array[middle_index] == elem
      return array[middle_index]
    elsif array[middle_index] < elem
      binary_search(elem,array[middle_index..-1])
    elsif array[middle_index] > elem
      binary_search(elem,array[0..middle_index - 1])
    end
  end
end

#search = Search.new
#Benchmark.measure { search.binary_search(5,search.my_array6)


#puts search.binary_search(5,search.my_array1)
# puts search.binary_search(5,search.my_array2)
# puts search.binary_search(5,search.my_array3)
# puts search.binary_search(5,search.my_array4)
# puts search.binary_search(5,search.my_array5)
# puts search.binary_search(5,search.my_array6)
# puts search.binary_search(5,search.my_array7)
# puts search.binary_search(5,search.my_array8)
# puts search.binary_search(5,search.my_array9)
