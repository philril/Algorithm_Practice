class Node
  attr_accessor :data, :parent, :left, :right

  def initialize(data = nil)
    @data = data
    @parent = nil
    @left = nil
    @right = nil
  end

end

class Tree
  attr_accessor :root

  def initialize(node)
    @root = node
  end

  def insert(node, parent)
    node.parent = parent
    if parent.left == nil
      parent.left = node
    elsif parent.left != nil && parent.right == nil
      parent.right = node
    else
      return "All children of this parent node are full"
    end
  end

#Breadth first
  def is_value_present?(node, value)
    if node == nil || node.left == nil || node.right == nil
      return false
    elsif node.left.data == value || node.right.data == value
      return true
    else
      is_value_present?(node.left, value)
      is_value_present?(node.right, value)
    end
  end

  def delete_node(node)
    if node.left == nil && node.right == nil # Leaf node
      # Delete process:
      node.parent == nil
      if node.parent.left == node
        node.left == nil
      elsif node.parent.right == node
        node.right == nil
      end
    elsif node
    end
  end

end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)
node7 = Node.new(7)

tree = Tree.new(node1)
# make node1 children:
tree.insert(node2, node1)
tree.insert(node3, node1)
# make node2 children:
tree.insert(node4, node2)
tree.insert(node5, node2)
# make node3 children:
tree.insert(node6, node3)
tree.insert(node7, node3)

p node1.parent == nil
p node2.parent.data == 1

p tree.insert(Node.new(8), node3) == "All children of this parent node are full"

p tree.is_value_present?(node1, 7) == true
p tree.is_value_present?(node1, 8) == false

