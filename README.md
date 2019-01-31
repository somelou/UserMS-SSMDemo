# UserMangementSystem-Demo

*A simple user information management system(Demo)，based on SSM frame.*  
*一个简单的基于SSM框架的用户信息管理系统.*

> * [参照博客](https://blog.csdn.net/qq_40061421/article/details/82112433 "IDEA+Maven+SSM框架实现的简单的增、删、改、查")

## 1.系统说明
* 开发环境
	* 编译器：intellij idea（jdk1.8.0）
	* 数据库：mysql
	* 服务器：Tomcat(9.0）
* 框架
 	* SSM框架（Spring+SpringMVC+MyBatis）

## 2.项目框架 

 <div align=center>![1](https://github.com/somelou/UserMS-SSMDemo/blob/master/Screenshots/ProjectMenu.png)   

**详细说明**
> * *java包（Source Root）*  
	1. *pojo:*存放自定义的java类。如：paper类，user类，book类等，每个类的属性设为private，并提供public属性的getter/setter方法让外界访问
service：定义接口，包含系统所提供的功能。（service包下再新建impl包用来实现接口上一个包的接口类）。  
	2. dao：定义接口，包含与数据库进行交互的功能。  
	3. controller：控制器，负责接收页面请求，转发和处理。  

> * *resources包*  
	1. Directory：“mapper”（用于存放xxxMapper.xml文件）和“spring”（用于存放spring-xxx.xml配置文件）。  
	2. userMapper.xml：mybatis框架mapper代理开发配置文件；  
	3. spring-dao.xml：spring-mybatis整合配置文件;  
	4. spring-mvc.xml：spring mvc配置文件, 自动扫描控制器，视图模式，注解的启动;  
	5. spring-service.xml:扫描注解，配置事务器；  
	6. 文件：  
	  “jdbc.properties”（mysql数据库配置文件）,    
	  “log4j.properties”（日志输出配置文件）,    
	  “mybatis-config.xml”（mybatis框架配置文件）。

> * *web-inf目录*    
	1. 新建“jsp”包，存放xxx.jsp显示界面     
		addUser.jsp：新增用户页面；    
		allUser.jsp：主操作界面；    
		updateUser.jsp：更新用户界面。


## 3.项目功能

`略`

***

## 4.项目运行效果

*初始界面*
![Start Interface](https://github.com/somelou/UserMS-SSMDemo/blob/master/Screenshots/Start.png) 

*主操作界面*
![Main Operation Interface](https://github.com/somelou/UserMS-SSMDemo/blob/master/Screenshots/MainOperation.png)
