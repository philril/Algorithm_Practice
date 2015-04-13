# iterate through array and put two adjacent elements in descending order

def bubble(arr)
  swap = true
  while swap == true
    i = 0
    swap = false
      while i <= arr.length - 2
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swap = true
        end
        i += 1
      end
  end
  arr
end

p bubble([2,1]) == [1,2]
p bubble([2,1,3,5,2]) == [1,2,2,3,5]
p bubble([8,7,4,23,2,5,1]) == [1,2,4,5,7,8,23]
p bubble([5,-4,7,5,3,2,-2,-3]) == [-4, -3, -2, 2, 3, 5, 5, 7]