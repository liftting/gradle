import groovy.util.slurpersupport.GPathResult
import groovy.util.slurpersupport.Node

def xparser = new XmlSlurper();

def targetFile = new java.io.File("xmllearn.xml");

/**
GPathResult gPathResult = xparser.parse(targetFile);

Iterator iterator = gPathResult.childNodes();

while (iterator.hasNext()) {

    Node child = iterator.next();
    println child.name();


}
 */


def resp = xparser.parse(targetFile);
//println resp.attributes();
def book4 = resp.value.books.book[3]
def author = book4.author

//再来获取元素的属性和 textvalue
//assert author.text() == ' Manuel De Cervantes '

println author.text();
// 获取属性
println author.@id;
println author['@id'];






