
const mytime = new Date();

const mytimes = ["getFullYear", "getHours", "getMinutes"];

mytimes.forEach(item => 
  console.log(eval("mytime" + "." + item + "()")));


