// Create function that takes a string, removes all of the duplicate letters, then returns the resulting string

function removeDupes(str){
  var arr = str.split("")
  var newArr = []
  var obj = {}

  for (var i=0;i<arr.length;i++){
    if (obj[arr[i]] == null){
      newArr.push(arr[i])
      obj[arr[i]] = 1
    }
  }
  return newArr.join("")
}

console.log(removeDupes("mississippi") == "misp")
console.log(removeDupes("google") == "gole")