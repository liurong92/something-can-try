# JavaScript-OO(面向对象)

**类**（class）描述所创建对象的共同属性和方法。“类”（class）的实例化后叫“实例”（instance）。
``` javascript
function Aminal(name,age){
  this.name = name;
  this.age = age;
}
```

**对象**（object）是面向对象中的术语，既表示客观世界问题空间中的某个具体的事物，又表示软件系统解空间中的基本元素。**对象**拥有唯一标识符，对象包含**属性**（表示需要记忆的信息）和**方法**（表示是对象能够提供的服务）。对象（object）就是类（class）的实例（instance），所有的对象（object）都是实例（instance），但并不是所有实例（instance）都是对象（object）。
``` javascript
function Aminal(name,age){
  this.name = name;
  this.age = age;
}
//此过程为实例一个对象
var cat = new Aminal('miaomiao',1);
```

###JavaScript中如何定义
``` javascript
function Person(name,age,sex){
  this.name = name;
  this.age = age;
  this.sex = sex;
}
var liurong = new Person('liurong',22,'male');
console.log(liurong.name);
console.log(liurong.age);
console.log(liurong.sex);
//运行结果
// liurong
// 22
// male
```
###从逻辑角度可以的出以下关系
类 -> 对象 -> 实例

####举例说明
我们可以用水果来举例：

**例1**

水果是个（类）
```javascript
function Fruit(name){
  this.name = name;
}
```

苹果是个（对象）
```javascript
var apple;
```

每个苹果是（实例）
``` javascript
apple = new Fruit('apple');
//其中，这个过程就是实例化一个对象，将Fruit实例化一个apple
```

**例2**

人是个（类）

男人或女人是（对象）

那个男人或女人是（实例）

###面向对象(OO)分类
**OOP**(Object-oriented programming，面向对象编程)：是一种程序设计范型，同时也是一种程序开发的方法。对象指的是类的实例。它将对象作为程序的基本单元，将程序和数据封装其中，以提高软件的重用性、灵活性和扩展性。

**OOD**(Object-Oriented Design，面向对象设计)：主要作用是对分析模型进行整理，生成设计模型提供给OOP作为开发依据。

###面向对象三大特点
1.封装性（package）：将精密相关的东西封装在一起，然后通过暴露在外部的名称来调用它。从而输出结果，如笔记本电脑，它就是将一切零件封装起来，然后我们通过外部来调用他。
``` javascript
//最为简单的封装方式
function Person(){
  this.name = "liurong";
  this.age = 22;
  this.getName = function() {
    return this.name;
  }
}

var person = new Person();
console.log(person.age);
console.log(person.getName());


//改进后的代码
function Person(name,age) {
  this.name = name;
  this.age = age;
  this.getName = function() {
    return this.name;
  }
}

var p1 = new Person("xiaoqiang",1);
alert(p1.age);
alert(p1.name);
alert(p1.getName());
//输出结果为：
// 1
// xiaoqiang
// xiaoqiang

var p2 = new Person("zhangsan",2);
alert(p2.age);
alert(p2.name);
alert(p2.getName());
//输出结果为：
// 2
// zhangsan
// zhangsan
```

2.继承性(Inheritance)：JavaScript中的继承是以复制的形式完成的，复制一个父对象，而不像java中直接继承父对象，是通过原型的方式完成继承，它的继承只是形式上的对面向对象语言的一种模仿，本质上不是继承，但用起来效果是一样的。

**简单解释：**

由另一个类（或多个类）得来类的属性和方法的能力
``` javascript
//我们使用“Object.prototype”（它是可以从父类继承属性的。）
function Person(name,sex){
  this.name = name;
  this.sex = sex;
}
Person.prototype.age =  22;
var liurong = new Person('liurong','male');
console.log(liurong.age);
//输出年龄--输出结果为：
//20

liurong.age = 21;
console.log(liurong.name);
console.log(liurong.age);
//输出姓名和年龄--输出结果为：
//liurong
//21

liurong.age = 20;
console.log(liurong.name);
console.log(liurong.age);
console.log(liurong.sex);
//输出姓名，年龄，性别--输出结果为：
//liurong
//20
//male


//继承方法调用
function Person(name,sex){
  this.name = name;
  this.sex = sex;
}
function Male(name,sex,age){
  Person.call(this,name,sex);
  this.age = age;
}
var liurong = new Male('liurong','male',22);
console.log(liurong.name);
console.log(liurong.sex);
console.log(liurong.age);
//输出年龄，性别，年龄--输出结果为：
//liurong
//male
//22
```

3.多态性（polypetide）：编写能以多种方法运行的函数或方法的能力
``` javascript
function Person(name,sex){
  this.name = name;
  this.sex = sex;
}
function Male(name,sex,age){
  Person.call(this,name,sex);
  this.age = age;
}
function Female(name,sex,age){
  Person.call(this,name,sex);
  this.age = age;
}
var male = new Male('liurong','male',22);
var female = new Male('liurongrong','female',20);
var array = [male,female];
for(i = 0; i < array.length; i++){
  console.log(array[i].name);
  console.log(array[i].sex);
  console.log(array[i].age);
}
//输出两人年龄，性别，年龄--输出结果为：
// liurong
// male
// 22
// liurongrong
// female
// 20
```
###面向对象五原则（SOLID）
1.**单一职责原则**(Single Responsibility Principle)：认为对象应该仅具有一种单一功能的概念。一个类应该仅有一个引起它变化的原因(最简单，最容易理解却最不容易做到的一个设计原则)。

2.**开闭原则**(Open Closed Principle)：认为“软件体应该是对于扩展开放的，但是对于修改封闭的”的概念。
既开放又封闭，对扩展是开放的，对更改是封闭的。

扩展即扩展现行的模块，当我们软件的实际应用发生改变时，出现新的需求，就需要我们对模块进行扩展，使其能够满足新的需求。

3.**里氏替换原则**(Liskov Substitution Principle)：认为“程序中的对象应该是可以在不改变程序正确性的前提下被它的子类所替换的”的概念。子类可以替换父类并且出现在父类能够出现的任何地方。这个原则也是在贯彻GOF倡导的面向接口编程。

4.**接口隔离原则**(Interface-segregation Principles)：认为“多个特定客户端接口要好于一个宽泛用途的接口”的概念。使用多个专门的接口比使用单个接口要好的多。

5.**依赖反转原则**(Dependency Inversion Principle)：认为一个方法应该遵从“依赖于抽象而不是一个实例”的概念。传统的结构化编程中，最上层的模块通常都要依赖下面的子模块来实现，也称为高层依赖低层！
