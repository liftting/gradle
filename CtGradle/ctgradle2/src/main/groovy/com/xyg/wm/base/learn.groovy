def va = 1 //可以不使用分号结尾
def va2 = "I am a person"
def int x = 1 //变量定义时,也可以直接指定类型

//无类型的函数定义,必须使用 def 关键字
/**
 * ￼其实,所谓的无返回类型的函数,我估计内部都是按返回 Object 类型来处理的。毕竟,Groovy 是基于 Java 的,而且最终会转成 Java Code 运行在 JVM 上
 * @return
 */
def nonReturnTypeFunc(){
    def int x = 2;
    x //最后一行代码的执行结果就是本函数的返回值
}

//如果指定了函数返回类型,则可不必加 def 关键字来定义函数
String getString(){
    return  "I am String"
}



//下面这个函数的返回值是字符串"getSomething return value" def getSomething(){
def getSomething() {
    " get Something return value"
    1000 //如果这是最后一行代码,则返回类型为 Integer
}

println(nonReturnTypeFunc());
println(getSomething());


println("字符串》》》")
// 1 单引号''中的内容严格对应Java中的String,不对$符号进行转义
def singleQuote='I am $ dolloar' //输出就是 I am $ dolloar


//2 双引号""的内容则和脚本语言的处理有点像,如果字符中有$号的话,则它会$表达式先求值。
def doubleQuoteWithoutDollar = "I am one dollar" //输出 I am one dollar
def sx = 1
def doubleQuoteWithDollar = "I am $sx dolloar" //输出 I am 1 dolloar


//3 三个引号'''xxx'''中的字符串支持随意换行 比如

def multieLines = ''' begin
line 1 line 2 end '''

println "基本数据类型》》》"
def int x2 = 2;
println x2.getClass().getCanonicalName()

def aList = [5,'string',true] //List 由[]定义,其元素可以是任何对象

//变量存取:可以直接通过索引存取,而且不用担心索引越界。如果索引超过当前链表长度,List 会自动 往该索引添加元素
assert aList[1] == 'string'
assert  aList[5] == null
aList[100] = 100
assert aList[100] == 100

println "Map类型"

//变量定义:Map 变量由[:]定义,比如
def aMap = ['key1':'value1','key2':true]


//Map 由[:]定义,注意其中的冒号。冒号左边是 key,右边是 Value。key 必须是字符串,value 可以是任何对 象。另外,key 可以用''或""包起来,也可以不用引号包起来。比如
def aNewMap = [key1:"value",key2:true] //其中的 key1 和 key2 默认被
//处理成字符串"key1"和"key2"


def key1="wowo"
def aConfusedMap=[key1:"who am i?"]

def aConfusedMap2=[(key1):"who am i?"] // 这样 key1 才是 wowo这个定义的值

println aMap.keyName // <==这种表达方法好像 key 就是 aMap 的一个成员变量一样
println aMap['keyName'] // <==这种表达方法更传统一点
aMap.anotherkey = "i am map" // <==为 map 添加新元素

println "Rang >>>>"
def aRange = 1..5 //<==Range 类型的变量 由 begin 值+两个点+end 值表示 左边这个 aRange 包含 1,2,3,4,5 这 5 个值
//如果不想包含最后一个元素,则
def aRangeWithoutEnd = 1..<5 // <==包含 1,2,3,4 这 4 个元素 println aRange.from
println aRange.to


println("闭包》》》")
def aClosure = {//闭包是一段代码,所以需要用花括号括起来..

String param1, int param2 -> //这个箭头很关键。箭头前面是参数定义,箭头后面是代码

    println "this is code" //这是代码,最后一句是返回值,

//也可以使用 return,和 Groovy 中普通函数一样

}

//闭包对象.call(参数) 或者更像函数指针调用的方法: 闭包对象(参数)
//比如:
aClosure.call("this is string", 100)

aClosure("this is string", 100)

def greeting = {
    println "Hello, $it"
}

greeting('nihao');
greeting.call('call nihao');


// Groovy中,当函数的最后一个参数是闭包的话,可以省略圆括号
def iamList = [1,2,3,4,5]
iamList.each {
    println it; // ?? 这个it变量
}

//那么调用的时候,就可以免括号!
def testClosure(int a,String b,Closure closure) {
    closure();//直接执行调用 闭包
}

testClosure 4,"test", {
    println "i am in closure"
}


// 将 groovy 转换成 java代码
// 执行 groovyc -d classes test.groovy
// groovyc 是 groovy 的编译命令,-d classes 用于将编译得到的 class 文件拷贝到 classes 文件夹 下















