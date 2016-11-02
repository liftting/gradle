
//如果不声明 public/private
//等访问权限的话,Groovy 中类及其变量默认都是 public 的
public class Two {
    String name;
    String title;

    Two(na, ti) {
        this.name = na;
        this.title = ti;
    }

    def print() {
        println name + " " + title;
    }

}