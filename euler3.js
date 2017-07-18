//function getting prime numbers from input

function getPrimes(num){
  var primes=[2];
  var noPrimes=[1];
  for (var i=3;i<num;i++){
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
  return primes;
}
console.log(getPrimes(13195));
// function to get largest prime factor of input (num)

function getLargestPrimeFactor(num){
  var primeFactors = [];
  var largestPrimeFactor = 0;
  var primes = getPrimes(num);

  for (var i=0;i<primes.length;i++) {
    if (num%primes[i] === 0){
      primeFactors.push(primes[i]);
      largestPrimeFactor = primes[i];
    }else{}
  }
  return(largestPrimeFactor)
}
  console.log(getLargestPrimeFactor(13195));
