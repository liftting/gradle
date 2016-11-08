def log = ">>groovy in learn:"

class Bean {
    def name, type;

    Bean(na, ty) {
        this.name = na;
        this.type = ty;
    }

    def show(name, type = 0) {
        println name + ":" + type
    }

}

Bean bean = new Bean("nihao", 1);
println log + "show data:$bean.name and $bean.type"
println log + "show data from function:${bean.show('nn', 2)}" // error this is error ???


def name1 = "One"
def name2 = "Two"

(name2, name1) = [name1, name2];
println log + "$name1 and $name2"

class Worker {
    def work() {
        println "in work"
    }
}

class Manager {
    @Delegate
    Worker worker = new Worker();
}

def manager = new Manager();
manager.work();

// >>>  == 判断 等同于 equals()
def str1 = "hello"
def str2 = str1
def str3 = new String("hello")
def str4 = "Hello"

println log + " str1 == str2 : ${str1 == str2}";
println log + " str1 == str3 : ${str1 == str3}";
println log + " str1 == str4 : ${str1 == str4}";

println log + " str1 is(str2) : ${str1.is(str2)}";
println log + " str1 is(str3) : ${str1.is(str3)}";
println log + " str1 is(str4) : ${str1.is(str4)}";


def list = [1, 2, 2, 4, 5]
list.find { it ->
    println it
}
//遍历查找到 复合 闭包处理条件的，
println list.find { it == 2 }

def cmap = ['c': 'cc', 'b': 'bb']
cmap.each {
    entry ->
        println "$entry.key and $entry.value"
}


