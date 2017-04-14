require_relative './empty_stack_exception'

class Stack
  def initialize
    @stack = []
  end

  def empty?
    @stack.empty?
  end

  def push(obj)
    @stack << obj
  end

  def size
    @stack.size
  end

  def top
    if @stack.size == 0
      raise EmptyStackException
    end
    @stack[0]
  end

  def pop
    if @stack.size == 0
      raise EmptyStackException
    end

    @stack.pop
  end
end
