require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort {|a, b| a.length <=> b.length}
end

def swap_elements(array)
   array[1], array[2] = array[2], array[1]
   array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  changed_array = []
  array.each do |word|
    word[2] = "$"
    changed_array << word
  end
  changed_array
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
