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
    raise EmptyStackException if empty?

    @stack[0]
  end

  def pop
    raise EmptyStackException if empty?

    @stack.pop
  end
end
