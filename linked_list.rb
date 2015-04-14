# Implement a linked list (with insert and delete functions)

## Not very DRY, put looping mechanism into a separate private method

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

  def insert(node) # always at start
    node.pointer = @head
    @head = node
  end

  def remove # always at start
    @head = @head.pointer if @head != nil
  end

  def length
    length = 1
    node = @head
    while node.pointer != nil
      node = node.pointer
      length += 1
    end
    return length
  end

  def print_all
    length = 1
    node = @head
    while node.pointer != nil
      node = node.pointer
      p node
      length += 1
    end
  end

  def mid
    length = 1
    mid = 1
    node = @head
    while node.pointer != nil && node.pointer.pointer != nil
      node = node.pointer.pointer
      length += 2
      mid += 1
    end
    return mid
  end

  def find_data_at_index(index_to_find)
    current_index = 0
    node = @head
    while node.pointer != nil
      return node.data if current_index == index_to_find
      node = node.pointer
      current_index += 1
    end
    return current_index
  end

  def insert_at_index(node_to_insert, index_to_add)
    current_index = 0
    node = @head
    while node.pointer != nil
      if current_index + 1 == index_to_add
        node_to_insert.pointer = node.pointer
        node.pointer = node_to_insert
      ## keep goin over list
        current_index += 1
        node = node.pointer
      else
        current_index += 1
        node = node.pointer
      end
    end
  end

  def delete_at_index(index_to_delete)
    current_index = 0
    node = @head
    while node.pointer != nil
      if current_index + 1 == index_to_delete
        node.pointer = node.pointer.pointer
        return node.data
      else
        current_index += 1
        node = node.pointer
      end
    end
  end

  def reverse(node = @head, previous_node = nil)
    @tail = node
    while node != nil
      # Reassign pointer:
      next_node = node.pointer
      node.pointer = previous_node
      # Advance to next node:
      previous_node = node
      node = next_node
    end
    @head = previous_node
  end

end

# Make linked list:
  i = 1
  list = LinkedList.new(Node.new(i))
  i += 1

  while i <= 20
    list.insert(Node.new(i))
    i += 1
  end

# TEST
p list.length == 20
p list.mid == 10
p list.find_data_at_index(3) == 17
p list.delete_at_index(6) == 15
p list.length == 19
list.insert_at_index(Node.new(5), 3)
p list.length == 20
p list.head.data == 20
p list.tail.data == 1
list.reverse
p list.head.data == 1
p list.tail.data == 20