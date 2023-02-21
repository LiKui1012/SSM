本demo用于以下功能点测试
1.spring的启动流程
1.1 tomcat加载web.xml，web.xml配置dispatchservlet，servlert加载顺序;
    配置请求过滤器，拦截器，读取springmvc的配置文件，spring的配置文件
1.2 springmvc配置文件，配置handleMapping，handleAdapter,viewResolver,乱码处理等
1.3 spring配置文件，配置需要扫描的包，给ioc容器统一实例化bean

2.spring实例化bean的三种方式
2.1构造方法实例化（重要），静态工厂实例化（了解），实例工厂实例化（了解）

3.spingbean的生命周期
https://blog.csdn.net/qq_36714200/article/details/111240510

4.springbean的注入方式
4.1注入方式一共有几种