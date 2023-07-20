# This line makes sure we can use the methods from the 'enumerable' file in this code.
require_relative 'enumerable'
# This class represents a special list that can do magical things with its items.
class MyList
  include MyEnumerable #  allows the MyList class to use the methods defined in the 'Enumerable' module.
  # This method creates a new MyList with the given items.
  def initialize(*items)
    @list = items
  end

  # This method is required by the 'Enumerable' module.
  # It allows us to loop through each item in the list using the 'each' method.
  def each(&)
    @list.each(&)
  end
end
list = MyList.new(1, 2, 3, 4, 1)
puts(list.all? { |e| e < 5 }) # Output: true
puts(list.all? { |e| e > 5 }) # Output: false
# Call the any? method on the list object
puts(list.any? { |e| e == 2 }) # Output: true
puts(list.any? { |e| e == 5 }) # Output: false
puts(list.any? { |e| e <= 5 }) # Output: true
puts(list.any? { |e| e >= 5 }) # Output: false
puts(list.any? { |e| e == 'kel-nana' }) # Output: false
# Call the filter method on the list object
puts(list.filter(&:even?)) # Output: [2, 4]
puts(list.filter(&:odd?)) # Output: [1, 1, 3]
puts(list.filter(&:integer?)) # Output: [1, 2, 3, 4,1]
# Call the contains_string? method on the list object
puts(list.contains_string?) # Output: false
# Call the max, min and sort method on the list object
puts list.max(3) # Output: [1, 2, 3]
puts list.min(2) # Output: [1, 2, ]
puts list.sort # Output: [1, 1, 2, 3,4 ]
