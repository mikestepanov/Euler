const evenFibsSum = (max) => {
  let fibOne = 1;
  let fibTwo = 2;
  let sum = 2;
  while (true) {
    let nextFib = fibOne + fibTwo;
    if (nextFib > max) {
      break;
    }
    if (nextFib % 2 === 0) {
      sum += nextFib;
    }
    fibOne = fibTwo;
    fitTwo = nextFib;
  }
  return sum;
};

let ans = evenFibsSum(4000000);

console.log(ans);

// O(1) space
// O(n) time
