require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # Write a method #nth_from_end that takes a number n and returns the value at the nth node from the end of the linked list. If the nth node does not exist, return nil.

    # For example, when given a linked list 3 -> 2 -> 1:
    # When n = 1, return 1 (the element at the end of the list)
    # When n = 3, return 3 (the third element from the end)
    # When n = 4, return nil (since 4 is greater than the length of the list)
    length = 0
    node = head
    until node.nil?
      node = node.next_node
      length += 1
    end

    return nil if n < 1 || n > length

    node = head 
    i = 1
    while i < length - n + 1
      node = node.next_node
      i += 1
    end

    node.value
  end

end
