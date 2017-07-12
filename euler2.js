var sum = 0;
var prev1 = 1;
var prev2 = 0;

for (var newterm=1; newterm<=4000000; newterm=prev1+prev2){
  if (newterm%2===0){
    console.log(newterm);
    sum=sum+newterm;
  }
    prev2 = prev1;
    prev1 = newterm;
}
console.log('final: '+sum)