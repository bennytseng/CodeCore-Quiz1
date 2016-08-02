// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.

function even(n) {
  for (var i = 0; i<(n*2); i+=2) {
    console.log(i);
  }
}

even(10);
