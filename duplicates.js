function duplicates(array){
  //set empty object to map duplicates to
  var dupObj = {}
  //loop through array and assign object keys and values. keys = num, values = num of occurances
  for (var i=0;i<array.length;i++){
    if (array[i] in dupObj){
      dupObj[array[i]] ++
    } else {
      dupObj[array[i]] = 1
    }
  }
  // set value for duplicates
  var dups = 0
  // check all values in array for duplicates
  for (var key in dupObj){
    if (dupObj[key] > 1){
      dups += (dupObj[key]-1)
    }
  }
  return dups
}

var arr1 = [0,-2,-2,5,5,5]
arr1Duplicates = duplicates(arr1)
console.log("number of duplicate values in array one: " + arr1Duplicates)

var arr2 = [1,2,2,2,3]
arr2Duplicates = duplicates(arr2)
console.log("number of duplicate values in array two: " + arr2Duplicates)
