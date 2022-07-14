
var beginTime = +new Date();

var a = 9
function test() {
  if (a > 0) {
    a = a % 2
  }
}
class People {
  run() {
    var b = 3
  }
}

var b = 1000
while (b > 0) {
  var p = new People()
  p.run()
  test()
  b = b - 1
}

var endTime = +new Date();
console.log(">>>>"+(endTime)+"ms");