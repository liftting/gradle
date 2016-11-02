def x = 1; // 注意这里是加上了  def的了，

def printx() {
    println x
}

printx(); // 执行会报错
/**
 *
 * groovy.lang.MissingPropertyException: No such property: x for class: scope
 at scope.printx(scope.groovy:4)
 at scope.run(scope.groovy:7)
 *
 *
 * 因为：
 * xxx.groovy 只要不是和 Java 那样的 class,那么它就是一个脚本。
 * 而且脚本 的代码其实都会被放到 run 函数中去执行。
 *
 * 那么,在 Groovy 的脚本中,很重要的一点就是 脚本中定义的变量和它的作用域
 *
 *
 *
 *
 * */