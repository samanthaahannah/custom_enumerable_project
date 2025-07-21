module Enumerable
  # Your code goes here
  def my_all?
    self.all? do |elem|
      yield(elem)
    end
  end

  def my_any?
    self.any? do |elem|
      yield(elem)
    end
  end

  def my_count
    self.count do |elem|
      if block_given?
        yield(elem)
      else
        self.count
      end
    end
  end

  def my_each_with_index
    self.each_with_index do |elem, index|
      yield(elem, index)
    end
  end

  def my_inject(init)
      self.inject(init) do |accum, value|
        yield(accum, value)  
      end
  end

  def my_map
    self.map do |elem|
      yield(elem)
    end
  end

  def my_none?
    self.none? do |elem|
      yield(elem)
    end
  end

  def my_select
    self.select do |elem|
      yield(elem)
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for item in self
      yield(item)
    end
  end
end
