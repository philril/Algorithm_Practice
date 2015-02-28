# Implement a linked list (with insert and delete functions)

## STARTED, HAVEN'T FINISHED

class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end

  def print_list_forward
    node = self
    return if node == nil
    node.print_list_forward
    puts node.right.data
  end

  def insert(data)
    self.right = Node.new(data)
  end

end

class LinkedList



end
# 5.times {|i| Node.new(i).insert(i+1); }