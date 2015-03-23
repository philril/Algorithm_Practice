class Node

  def initialize(data)
    attr_accessor :data, :neighbors, :visited

    @data = data
    @neighbors = []
    @visited = false
  end

end