# Find shortest path through graph
## NOT DONE YET

def shortest_path(arr)
  num_of_nodes = arr.first.to_i
  nodes = arr[1, num_of_nodes]
  start = nodes.first
  finish = nodes.last
  paths = arr[num_of_nodes+1, arr.length-1]
  possible_paths = []

  num_of_nodes.times do
    possible_paths << [start]
  end

  counter = 0
    while counter < num_of_nodes
      comparison = possible_paths[counter][counter] + "-" + nodes[counter+1]

      counter += 1
    end

  possible_paths
end

input = ["5","A","B","C","D","F","A-B","A-C","B-C","C-D","D-F"]
p shortest_path(input)
