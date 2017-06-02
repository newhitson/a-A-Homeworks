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
