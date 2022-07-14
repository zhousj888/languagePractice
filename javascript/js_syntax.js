//控制语句
var age = 3;
if (age >= 18) {
    alert('adult');
} else if (age >= 6) {
    alert('teenager');
} else {
    alert('kid');
}

for (i = 1; i <= 10000; i++) {
    x = x + i;
}

var a = ['A', 'B', 'C'];
for (var i in a) {
    console.log(i); // '0', '1', '2'
    console.log(a[i]); // 'A', 'B', 'C'
}
for (var i of a) {
    console.log(i); // 'A', 'B', 'C'
}


var x = 0;
var n = 99;
while (n > 0) {
    x = x + n;
    n = n - 2;
}

//数据
true; // 这是一个true值
false; // 这是一个false值
true && true; // 这个&&语句计算结果为true
!true; // 结果为false
false == 0; // true
false === 0; // false
/**
 * 第一种是==比较，它会自动转换数据类型再比较，很多时候，会得到非常诡异的结果；
 * 第二种是===比较，它不会自动转换数据类型，如果数据类型不一致，返回false，如果一致，再比较。
 * 由于JavaScript这个设计缺陷，不要使用==比较，始终坚持使用===比较。
 */
//数组：
[1, 2, 3.14, 'Hello', null, true];
new Array(1, 2, 3); // 创建了数组[1, 2, 3]
var arr = [1, 2, 3.14, 'Hello', null, true];
arr[0]; // 返回索引为0的元素，即1
arr[5]; // 返回索引为5的元素，即true
arr[6]; // 索引超出了范围，返回undefined


var m = new Map([
    ['Michael', 95],
    ['Bob', 75],
    ['Tracy', 85]
]);
m.set('Adam', 67); // 添加新的key-value
m.set('Bob', 59);
m.has('Adam'); // 是否存在key 'Adam': true
m.get('Adam'); // 67
m.delete('Adam'); // 删除key 'Adam'
m.get('Adam'); // undefined

//函数定义
function abs(x) {
    if (x >= 0) {
        return x;
    } else {
        return -x;
    }
}
var abs = function(x) {
    if (x >= 0) {
        return x;
    } else {
        return -x;
    }
};
//类定义
class Student {
    constructor(name) {
        this.name = name;
    }

    hello() {
        alert('Hello, ' + this.name + '!');
    }
}
class PrimaryStudent extends Student {
    constructor(name, grade) {
        super(name); // 记得用super调用父类的构造方法!
        this.grade = grade;
    }

    myGrade() {
        alert('I am at grade ' + this.grade);
    }
}

var xiaoming = new Student('小明');
xiaoming.hello();