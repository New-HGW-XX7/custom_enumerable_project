module Enumerable
  def my_each_with_index(&block)
    i = 0
    self.my_each do |el|
      block.call(el, i)
      i += 1
    end
  end   
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each(&block)
    for el in self
      block.call(el)
    end
  end
end
