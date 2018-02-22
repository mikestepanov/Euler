const substringSumsOfPrimeConcatenations = function(numOfPrimes, numOfRepeats, mod) {
  const firstNPrimes = getNPrimes(numOfPrimes).join('');
  console.log(firstNPrimes);
  const repeatedNum = Number(firstNPrimes.repeat(numOfRepeats));
  console.log(repeatedNum);
  const contigatedNum = contigate(repeatedNum);
  console.log(contigatedNum);
  return repeatedNum % mod;
};

const contigate = function(num) {
  var arr = [];
  let strNum = toFix(num);
  console.log(strNum);
  for(let i = 1; i <= strNum.length; i++) {
    for(let j = 0; j < strNum.length - i + 1; j++) {
      var newNum = strNum.slice(j, i + j);
      arr.push(parseInt(newNum));
    }
  }
  let total = 0;
  for(var omega = 0; omega < arr.length; omega++) {
    total += arr[omega];
  }
  return total;
};

function toFix(i){
 var str='';
 do{
   let a = i%10;
   i=Math.trunc(i/10);
   str = a+str;
 }while(i>0)
 return str;
}

const getNPrimes = function (num) {
  const arrOfPrimes = [];
  let count = 2;
  while(arrOfPrimes.length < num) {
    if(isPrime(count)) {
      console.log(arrOfPrimes);
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

// const numOfPrimes = 7;
// const numOfRepeats = 3;
const numOfPrimes = Math.pow(10,6);
const numOfRepeats = Math.pow(10,12);
const mod = Math.pow(10,9) + 7;

let result = substringSumsOfPrimeConcatenations(numOfPrimes, numOfRepeats, mod);

console.log(result);
