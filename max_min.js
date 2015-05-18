// JavaScript function that finds max and min values of array
var maxMin = function(inputArray){
  var max = 0
  var min = 0
  for (i=0;i<inputArray.length;i++){
    if (inputArray[i] > max){
      max = inputArray[i]
    };
    if (inputArray[i] < min){
      min = inputArray[i]
    };
  };
  return [max,min]
};

testArray = [0,4,7,2,8,3,5,1,7,2,4,8,3]
console.log(maxMin(testArray))

testArray.push(-23,1243)
console.log(maxMin(testArray))