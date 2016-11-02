def srcFile = new java.io.File("read.txt")
def targetFile =  new java.io.File("write.txt")


targetFile.withOutputStream {
    os->
        srcFile.withInputStream {
            ins->
                os<<ins // 利用 OutputStream 的<<操作符重载,完成从 inputstream 到 OutputStream //的输出
        }
}
