require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

# shortcut method
# def sort_array_desc(array)
#   array.sort.reverse
# end

# original attempt
# def sort_array_char_count(array)
#   array.sort {|a, b| a.length <=> b.length}
# end

#refactoring
def sort_array_char_count(array)
  array.sort_by {|string| string.length}
end

# this is called parallel assignment
def swap_elements(array)
   array[1], array[2] = array[2], array[1]
   array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each{|word| word[2] = "$"}
  end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.inject(0) {|sum, element| sum + element}
end

def add_s(array)
  array.each_with_index.collect {|element, index| index == 1 ? element : element + "s" }
end
