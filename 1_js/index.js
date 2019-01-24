// const prompt = require('prompt');
//
// prompt.start();
//
// var question = "What is your favorite noun?"
// prompt.get(question, function(err, result){
//   console.log('Your favorite noun is ' + result[question])
// })

function greeting(name){
  var greeting1 = `Hello ${name}, `;
  var greeting2 = greeting1 + " nice to meet you!";
  return greeting2
}

var result = greeting('James')
result += " How's your day going?"
console.log(result)

