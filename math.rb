module Math
  def self.fibonacci(index)
    raise "Index must be >= 0; provided value #{index} is out of bounds" if index < 0

    return 1 if index == 0
    return 2 if index == 1
    return fibonacci(index - 2) + fibonacci(index - 1)
  end
end