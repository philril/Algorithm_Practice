// JAVASCRIPT Binary search algorithm: find index of supplied search_num in search_data array

// Starting with this function allows you to use first low/high values without having to reuse them in each recursion
function searchIndex(searchNum, searchData){
  var low = 0
  var high = searchData.length - 1
  return binarySearch(searchNum, searchData, low, high)
}

function binarySearch(searchNum, searchData, low, high){
  var mid = Math.floor((low+high)/2)
  if (high < low) {
    return null
  }
  if (searchData[mid] > searchNum) {
    // high = mid - 1
    return binarySearch(searchNum, searchData, low, mid - 1)
  }
  else if (searchData[mid] < searchNum) {
    // low = mid + 1
    return binarySearch(searchNum, searchData, mid + 1, high)
  }
  else {
    return mid
  }
}

var arr = [1,3,5,7,8,27,67,102]
console.log(searchIndex(5, arr) == 2)
console.log(searchIndex(102, arr) == 7)
console.log(searchIndex(8, arr) == 4)
console.log(searchIndex(3, arr) == 1)