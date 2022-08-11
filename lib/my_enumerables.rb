module Enumerable
  def my_each_with_index(&block)
    i = 0
    self.my_each do |el|
      block.call(el, i)
      i += 1
    end
  end

  def my_select(&block)
    return_arr = []
    self.my_each do |el|
      return_arr << el if block.call(el)
    end
    return_arr
  end

  def my_all?(&block)
    result_arr = []
    self.my_each do |el|
      if block.call(el)
        result_arr << true
      else
        result_arr << false
      end
    end
    result_arr.include?(false) ? false : true
  end

  def my_any?(&block)
    result_arr = []
    self.my_each do |el|
      if block.call(el)
        result_arr << true
      else
        result_arr << false
      end
    end
    result_arr.include?(true) ? true : false
  end 

  def my_none?(&block)
    result_arr = []
    self.my_each do |el|
      if block.call(el)
        result_arr << true
      else
        result_arr << false
      end
    end
    result_arr.include?(true) ? false : true
  end 

  def my_count(&block)
    count_arr = []
    if block_given?
      self.my_each do |el|
        count_arr << el if block.call(el)
      end
    else
      self.my_each do |el|
        count_arr << el  
      end
    end 
    count_arr.length
  end

  def my_map(&block)
    result_arr = []
    self.my_each do |el|
      result_arr << block.call(el)
    end
    result_arr
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
