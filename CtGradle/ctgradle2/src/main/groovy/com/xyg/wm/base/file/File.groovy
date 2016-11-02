def targetFile = new java.io.File("read.txt");

// 读该文件中的每一行:eachLine 的唯一参数是一个 Closure。
// Closure 的参数是文件每一行的内容 其内部实现肯定是 Groovy 打开这个文件,然后读取文件的一行,然后调用 Closure...
targetFile.eachLine { String oneLine ->

    println oneLine

} // <==是不是令人发指??!

// 获取文件完整内容
String data = new String(targetFile.getBytes());

println data;


//对流的操作
def ism = targetFile.newInputStream();
byte[] smbyte = new byte[1024];
while (ism.read() != -1) {
    ism.read(smbyte);
}

ism.close();
String smData = new String(smbyte);
println "this is " + data;


// 闭包操作流
// 自动关闭流
targetFile.withInputStream {
    tis ->

        byte[] tisbyte = new byte[1024];
        while (tis.read() != -1) {
            tis.read(tisbyte);
        }

        println("this is clourse >>")
        println(new String(tisbyte));

}

/**
 *
 * java.io.File: http://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/File.html
 * java.io.InputStream: http://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/InputStream.html
 * java.io.OutputStream: http://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/OutputStream.html
 * java.io.Reader: http://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/Reader.html
 * java.io.Writer: http://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/Writer.html
 * java.nio.file.Path: http://docs.groovy-lang.org/latest/html/groovy-jdk/java/nio/file/Path.html
 *
 * */



