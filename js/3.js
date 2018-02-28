const largestPrimeFactor = (target) => {
  let prime = null;
  let divisor = 2;
  while (target > 1) {
    if (target % divisor === 0) {
      prime = divisor;
      target /= divisor;
    } else {
      divisor++;
    }
  }
  return prime;
};

let ans = largestPrimeFactor(600851475143);

console.log(ans);
