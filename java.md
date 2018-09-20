类变量（静态变量）

- 类变量也称为静态变量，在类中以static关键字声明，但必须在方法构造方法和语句块之外。

- 静态变量除了被声明为常量外很少使用。常量是指声明为public/private，final和static类型的变量。常量初始化后不可改变。

- 与实例变量具有相似的可见性。但为了对类的使用者可见，大多数静态变量声明为public类型。

```java
public class Car extends Vehicle {
    public static void main(String args[]){
        Vehicle v1 = new Vehicle(); //父类型
        Vehicle v2 = new Car(); //子类的实例可以声明为父类型
        Car c1 = new Car();    // 子类型
        Car c2 = new Vehicle(); //这句会报错，父类型的实例不能声明为子类型
```

1. 声明数组变量 

2. 创建数组

   `dataType[] arrayRefVar = new dataType[arraySize];`

implements使用范围为类继承借口的情况，可以同时继承多个接口