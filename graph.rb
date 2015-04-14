class Node
  attr_accessor :data, :neighbors, :visited

  def initialize(data)
    @data = data
    @neighbors = []
    @visited = false
  end

end

class Graph

  def initialize(node)
    @head = node
  end

  def insert(node, pointers)
    pointers.each do |pointer|
      # node.neighbors << pointer
      pointer.neighbors << node
    end
  end

  def print_all(node = @head)
    p node
    node.neighbors.each do |neighbor|
      print_all(neighbor)
    end
  end

end

node1 = Node.new("hey1")
node2 = Node.new("hey2")
node3 = Node.new("hey3")

graph = Graph.new(node1)
graph.insert(node2, [node1])
graph.insert(node3, [node2, node1])
graph.print_all