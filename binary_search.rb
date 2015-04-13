## RUBY Binary search algorithm: find index of supplied search_num in search_data array

def binary_search(search_num, search_data, low = 0, high = search_data.length - 1)
  mid = (low+high)/2.to_i
  case
    when high < low then return nil
    when search_data[mid] > search_num then high = mid - 1
    when search_data[mid] < search_num then low = mid + 1
    else return mid
  end
  binary_search(search_num, search_data, low, high)
end

arr = [1,3,5,7,8,27,67,102]
p binary_search(5, arr) == 2
p binary_search(102, arr) == 7
p binary_search(8, arr) == 4
p binary_search(3, arr) == 1
