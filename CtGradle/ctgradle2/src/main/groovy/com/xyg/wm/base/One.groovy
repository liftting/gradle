package com.xyg.wm.base;

//如果不声明 public/private
//等访问权限的话,Groovy 中类及其变量默认都是 public 的
public class One {
    String name;
    String title;

    One(na, ti) {
        this.name = na;
        this.title = ti;
    }

    def print() {
        println name + " " + title;
    }

}