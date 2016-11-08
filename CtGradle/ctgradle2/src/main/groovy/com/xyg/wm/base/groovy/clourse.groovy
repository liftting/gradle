import groovy.transform.TypeChecked
import groovy.transform.TypeCheckingMode

class Cal {
    Cal(calBlock) {
        println "using..."
        calBlock();
    }
}

def scal = new Cal({
    println "this is cal block";
});

// >>>
//注解配置 是否进行类型检查，配置动态特性的 开关
@TypeChecked
class Move {
    @TypeChecked(TypeCheckingMode.SKIP)
    def move(helper) {
        helper.take();
    }
}

class OneMove {
    def take() {
        println "this is one move take...";
    }
}

class TwoMove {
    def take() {
        println "this is two move take...";
    }
}


Move move = new Move();
TwoMove two = new TwoMove();
move.move(two);

// >>>

def printEven(int n, block) {
    for (int i = 2; i <= n; i += 2) {
        block i
    }
}

printEven(10, { println it })

//最后一个参数是 闭包时，
printEven(10) {
    println "two:$it"
}

printEven(10) {
    snumber ->
        println "three:$snumber"
}
// 当我们向闭包，传递参数时，  如果有多个参数，其实 groovy在查找时，是要进行校验查找函数的，
def showName(block) {
    block 'pa', 'pb'
}
//多参数配置传递
showName({
    pa, pb ->
        println "this is $pa,$pb"
})

// >>>
def curShow(clourse) {
    Date date = new Date('09/20/2016');

    pclourse = clourse.curry(date); //固定绑定一个参数，
    pclourse "this is param"

}

curShow {
    date, pname ->
        println "script $date:$pname"
}

//
def showParam(clourse) {
    println "show params:$clourse.maximumNumberOfParameters params(s) given"
    for (ap in clourse.parameterTypes) {
        println ap.name
    }
    println "---"
}

showParam() {}
showParam() { -> }
showParam() { val -> }
showParam() { Date val1 -> }
showParam() { it }

// 闭包 委托  》》 类似 js中的原型机制
//闭包三属性，  delegate this owner
def showAttr(clourse) {
    clourse();
}

showAttr() {
    println "show attr:===="
    println "show:this-" + this + ",super:" + this.getClass().superclass.name
    println "show:owner-" + owner + ",super:" + owner.getClass().superclass.name
    println "show:delegate-" + delegate + ",super:" + delegate.getClass().superclass.name

}



