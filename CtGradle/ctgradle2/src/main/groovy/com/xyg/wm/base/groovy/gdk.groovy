str = 'hello'
println str.dump() //包含字段类型，

// with() 会将传递的闭包的 elegate 属性设置到调用with()的对象上
lst = [1, 2, 3]
lst.with {
    add(4)
    add(5)
    println size()
    println contains(2)
    println "delegate is${delegate}"
}

//线程
//Object.sleep 遇见中断请求，是不处理的，会被压制下来，
thread = Thread.start {
    println 'thraed begin'
    new Object().sleep(100)
    println 'thread done'
}

new Object().sleep(100)
println('interrupt thread')
thread.interrupt()
thread.join()

// 线程中断处理
def playSleep(flag) {
    thread = Thread.start {
        println 'play sleep thraed begin'
        new Object().sleep(2000) {
            println 'Interrupted...' + it
            flag
        }
        println 'play sleep thraed done'
    }

    thread.interrupt()
    thread.join()

}

new Object().sleep(100)
println('play sleep interrupt thread')
//playSleep(true)
//playSleep(false)// 返回false，不响应中断，继续sleep

process = "wc".execute()
process.out.withWriter {
    it << "in the word"
    it << "lets go"
}
//下面读取一次后 流就关闭了
println process.in.text
//println process.text




