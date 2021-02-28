module Math
  def self.fibonacci(index)
    raise "Index must be >= 0; provided value #{index} is out of bounds" if index < 0

    return 1 if index == 0
    return 2 if index == 1

    prev_prev_value = 1
    prev_value = 2
    current_value = 3

    current_index = 2
    while current_index <= index
      current_index += 1

      current_value = prev_prev_value + prev_value
      prev_prev_value = prev_value
      prev_value = current_value
    end
    return current_value
  end
end