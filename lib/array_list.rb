# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0] # native array: fixed size, indexing only
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    raise "bad things" if @size == 0
    # @storage[@size] = 0
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    @size
  end

  def max
    raise "bad things" if @size == 0
    biggest = @storage[0]
    @size.times do |i|
      if @storage[i] > biggest
        biggest = @storage[i]
      end
    end
    return max
  end

  def to_s #in java toString
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{str[0..-3]}]"
  end
end
