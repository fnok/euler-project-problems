var sqSum = 0;
var sumSq = 0;

function getDifference(num){
  
for(var i=1;i<num+1;i++){
	sqSum = sqSum + i*i;
}

for (var j=1;j<num+1;j++){
  sumSq = sumSq + j;
}
sumSq = sumSq*sumSq;
if (sumSq>sqSum){
  return sumSq-sqSum;
}else{
  return sqSum-sumSq;
}

}
console.log(getDifference(100))