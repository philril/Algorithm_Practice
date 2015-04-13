# Find shortest path through graph
## NOT DONE YET

def shortest_path(arr)
  num_of_nodes = arr.first.to_i
  nodes = arr[1, num_of_nodes]
  start = nodes.first
  finish = nodes.last
  paths = arr[num_of_nodes+1, arr.length-1]
  possible_paths = []

  # nodes.length.times do
  #   possible_paths << [start]
  # end

  nodes.each do |first_node|
    nodes.each do |second_node|
      if paths.any?{|path|path == first_node + "-" + second_node}
        p first_node+"-"+second_node
      end
    end
  end

  possible_paths
end

input = ["5","A","B","C","D","F","A-B","A-C","B-C","C-D","D-F"]
p shortest_path(input)
