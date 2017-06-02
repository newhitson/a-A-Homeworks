class Map
  attr_reader :map

  def initialize(map = [])
    @map = map
  end

  def assign(key, value)
    if lookup(key) != nil
      remove(key)
    end
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |k|
      return k if k[0] == key
    end
    nil
  end

  def remove(key)
    @map.each_with_index do |k,i|
      @map.delete(@map[i]) if k[0] == key
    end
  end

  def show
    @map.dup
  end
end


class Queue
  attr_reader :queue

  def initialize(queue = [])
    @queue = queue
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end

class Stack
  attr_reader :stack

    def initialize(stack = [])
      # create ivar to store stack here!
      @stack = stack
    end

    def add(el)
      # adds an element to the stack
      @stack << el
    end

    def remove
      # removes one element from the stack
        @stack.pop
    end

    def show
      # return a copy of the stack
      @stack.dup
    end
  end
