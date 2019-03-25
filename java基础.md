**类变量（静态变量）**

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



### 编码规范



**选择好名称**

类的名称通常是用来解释类是什么的名词或者名词短语: `List`、`PersonReader`.

方法的名称通常是动词或者动词短语, 说明该方法做什么: `close`、`readPersons`. 修改对象或者返回一个新对象

的名称也应遵循协议. 例如 `sort`是对一个集合就低排序, 而 `sorted`是返回一个排序后的集合副本.

名称应该表明实体的目的是什么,所以最好避免在名称中使用无意义的单词( `Manager`、 `Wrapper`等).

当使用首字母缩写作为名称的一部分时,如果缩写由两个字母组成, 就将其大写( `IOStream`); 而如果缩写更长一些,

而如果缩写更长一些,就只大写其首字母( `XmlFormatter`、 `HttpInputStream`).



### 示例代码

计算运行效率

```java
    /**
     * unit testing of the methods (optional)
     * Unit test the {@code KdTree} data type.
     *
     * @param args the command-line arguments
     */
    public static void main(String[] args) {

        double timeOfInsert = 0.0;
        double timeOfNearest = 0.0;
        double timeOfRange = 0.0;
        KdTree kdtree = new KdTree();
        Stopwatch timer;
        Point2D p;

        for (int i = 0; i < 1000000; i++) {
            p = new Point2D(StdRandom.uniform(0.0, 1.0),
                    StdRandom.uniform(0.0, 1.0));
            timer = new Stopwatch();
            kdtree.insert(p);
            timeOfInsert += timer.elapsedTime();
        }
        StdOut.print("time cost of insert(random point)(1M times)    : ");
        StdOut.println(timeOfInsert);

        for (int i = 0; i < 100; i++) {
            p = new Point2D(StdRandom.uniform(0.0, 1.0),
                    StdRandom.uniform(0.0, 1.0));
            timer = new Stopwatch();
            kdtree.nearest(p);
            timeOfNearest += timer.elapsedTime();
        }
        StdOut.print("time cost of nearest(random point)(100 times)  : ");
        StdOut.println(timeOfNearest);

        for (int i = 0; i < 100; i++) {
            double xmin = StdRandom.uniform(0.0, 1.0);
            double ymin = StdRandom.uniform(0.0, 1.0);
            double xmax = StdRandom.uniform(0.0, 1.0);
            double ymax = StdRandom.uniform(0.0, 1.0);
            RectHV rect;

            if (xmin > xmax) {
                double swap = xmin;

                xmin = xmax;
                xmax = swap;
            }
            if (ymin > ymax) {
                double swap = ymin;

                ymin = ymax;
                ymax = swap;
            }
            rect = new RectHV(xmin, ymin, xmax, ymax);
            timer = new Stopwatch();
            kdtree.range(rect);
            timeOfRange += timer.elapsedTime();
        }
        StdOut.print("time cost of range(random rectangle)(100 times): ");
        StdOut.println(timeOfRange);
    }
```

