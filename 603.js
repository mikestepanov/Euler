const substringSumsOfPrimeConcatenations = function(numOfPrimes, numOfRepeats, mod) {
  const firstNPrimes = getNPrimes(numOfPrimes).join('');
  const repeatedNum = Number(firstNPrimes.repeat(numOfRepeats));
  const contigatedNum = contigate(repeatedNum);
  return repeatedNum;
  // return repeatedNum % mod;
};

const contigate = function(num) {
  const mySet = new Set();
  let strNum = num + '';
  for(let i = 0; i < strNum.length; i++) {
    for(let k = 1; k <= strNum.length; k++) {
      let tempNum = Number(strNum.slice(i, k - 1));
      mySet.add(tempNum);
    }
  }
  let arr = [...mySet];
  let total = 0;
  for(var omega = 0; omega < arr.length; omega++) {
    total += arr[omega];
    // console.log(total);
  }
  return total;
};

const getNPrimes = function (num) {
  const arrOfPrimes = [];
  let count = 2;
  while(arrOfPrimes.length < num) {
    if(isPrime(count)) {
      arrOfPrimes.push(count);
    }
    count++;
  }
  return arrOfPrimes;
};

const isPrime = function(num) {
  for(let i = 2; i < num; i++) {
    if(num % i === 0 && num != 2) {
      return false;
    } 
  }
  return true;
};

const numOfPrimes = 7;
const numOfRepeats = 3;
// const numOfPrimes = Math.pow(10,6);
// const numOfRepeats = Math.pow(10,12);
const mod = Math.pow(10,9) + 7;

let result = substringSumsOfPrimeConcatenations(numOfPrimes, numOfRepeats, mod);

console.log(result);

