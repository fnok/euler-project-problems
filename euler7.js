function getNthPrime(num){
  var primes=[2];
  var noPrimes=[1];
  for (var i=3;primes.length<num;i++){
    for (var j=2;j<i;j++){
      if (i%j===0){
        noPrimes.push(i);
        if (primes[primes.length-1] === i){
        primes.pop();
        }else{ }
        break;}
      else {
        if (noPrimes[noPrimes.length-1] !== i && primes[primes.length-1] !== i){
        primes.push(i);} else{}
        }
      }
    }
  return primes[num-1];
}
console.log(getNthPrime(10001));