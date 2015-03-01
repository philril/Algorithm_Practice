## Make a circular linked list

class Node
  attr_accessor :data, :pointer

  def initialize(data = nil, pointer = nil)
    @data = data
    @pointer = pointer
  end

end

class LinkedList
  attr_accessor :head, :tail

  def initialize(node)
    @head = node
    @tail = node
  end

  def insert(node)
    node.pointer = @head
    @head = node
    @tail.pointer = @head
  end

  def print_all
    length = 1
    p @tail
    p @tail.data

    node = @tail
    while node.pointer != @tail
      node = node.pointer
      puts node, node.data
      length += 1
    end
  end

end

node1 = Node.new(1)
node2 = Node.new(2)

list = LinkedList.new(node1)
list.insert(node2)

p list.tail.data == 1
p list.head.data == 2

node3 = Node.new(3)
list.insert(node3)

p list.head.data == 3
p list.tail.data == 1

puts
list.print_all
