module Enumerable
  def my_each_with_index(&block)
    self.my_each do |el|
      i = self.index(el)
      block.call(el, i)
    end
  end   
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each(&block)
    for x in self
      block.call(x)
    end
  end
end
