const evenFibsSum = (max) => {
  let fibs = [1, 2];
  let sum = 2;
  while (true) {
    let nextFib = fibs[0] + fibs[1];
    if (nextFib >= max) {
      break;
    }
    if (nextFib % 2 === 0) {
      sum += nextFib;
    }
    fibs.shift();
    fibs.push(nextFib);
  }
  return sum;
};

let ans = evenFibsSum(4000000);

console.log(ans);
