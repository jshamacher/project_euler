module Math
  @@fibonacci_cache = { 0 => 1, 1 => 2 }

  def self.fibonacci(index)
    raise "Index must be >= 0; provided value #{index} is out of bounds" if index < 0

    return @@fibonacci_cache[index] if @@fibonacci_cache.include? index

    current_index = index
    current_value = 0
    while current_index <= index
      current_value = @@fibonacci_cache[current_index - 2] + @@fibonacci_cache[current_index - 1]
      @@fibonacci_cache[current_index] = current_value

      current_index += 1
    end
    return current_value
  end
end