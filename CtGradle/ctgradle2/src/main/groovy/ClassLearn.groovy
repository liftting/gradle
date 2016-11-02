import com.xyg.wm.base.One;

def one = new One("cmcm", " is wonderful ")
one.print()

/**
 * 放在这个目录下ctgradle2/src/main/groovy
 * 因为groovy查找时的路径是：
 *在 groovy 中,系统自带会加载当前目录/子目录下的 xxx.groovy 文件。所以,当执行
 * groovy ClassLearn.groovy 的时候,ClassLearn.groovy import 的 One 类能被自动搜索并加载到
 *
 * 注意：
 * 如果将这个类 放到和One.groovy同一个目录下时，就会报 类无法解析的错误
 *
 *
 *
 *
 *
 */
