module MyEnumerable
    # Checks if ALL the items in the collection satisfy a condition.
    def all?()
      each { |item| return false unless yield(item) }
      true
    end
  
    # Checks if ANY item in the collection satisfies a condition.
    def any?()
      each { |item| return true if yield(item) }
      false
    end
  
    # Filters and returns a new collection with items that satisfy a condition.
    def filter()
      result = []
      each { |item| result << item if yield(item) }
      result
    end

      # Checks if the collection contains any string element.
  # Returns true if at least one element in the collection is a string, otherwise false.
    def contains_string?
        @list.any? { |element| element.is_a?(String) }
      end

       # Returns the maximum element(s) in the collection.
  def max(n = nil)
    return nil if @list.empty?

    # If no block is given, use the default comparison.
    if !block_given?
      sorted_list = @list.sort
    else
      # If a block is given, use it for custom comparison.
      sorted_list = @list.sort { |a, b| yield(a, b) }
    end

    # If n is not specified or n is greater than the list size, return all elements.
    return sorted_list if n.nil? || n >= @list.size

    # Otherwise, return the first n elements from the sorted list.
    sorted_list.take(n)
  end

  def min(n = nil)
    return nil if @list.empty?

    # If no block is given, use the default comparison.
    if !block_given?
      sorted_list = @list.sort
    else
      # If a block is given, use it for custom comparison.
      sorted_list = @list.sort { |a, b| yield(a, b) }
    end

    # If n is not specified or n is greater than the list size, return all elements.
    return sorted_list if n.nil? || n >= @list.size

    # Otherwise, return the first n elements from the sorted list.
    sorted_list.take(n)
  end

  def sort()
    return [] if @list.empty?

    # If no block is given, use the default comparison.
    if !block_given?
      sorted_list = @list.sort
    else
      # If a block is given, use it for custom comparison.
      sorted_list = @list.sort { |a, b| yield(a, b) }
    end

    sorted_list
  end
  end
  