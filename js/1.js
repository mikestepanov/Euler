const sumMultThreeOrFive = (num) => {
  let sum = 0;
  for (let i = 0; i < num; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
      sum += i;
    }
  }
  return sum;
};

let ans = sumMultThreeOrFive(1000);

console.log(ans);


// O(1) space
// O(n) time
