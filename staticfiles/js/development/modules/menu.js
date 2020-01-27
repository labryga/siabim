
function currying(fun) {
  return function(a) {
    return function(b) {
      return fun(a, b)
    }
  }
}


function mysum(a, b) {
  return a * b;
}

mysum = currying(mysum);

console.log(
  mysum(24)(999)
);
