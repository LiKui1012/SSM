package com.qcby.beancreate;

/**
 * @author heWen
 */
public class BookDaoImpl implements BookDao {

    /**
     * 无参构造器，创建对象时必须要用，在此处代码如果运行了，就代表创建对象时运行了此代码，对于构造器的理解看看example
     * 公共的和私有的都可以访问，    有无都可以  1.结论：实例化bean就是用构造方法来实例化对象
     **/
//    public BookDaoImpl() {
//        System.out.println("book dao 构造器 is running ....");
//    }

    @Override
    public void save() {
        System.out.println("book dao save ...");
    }

}
