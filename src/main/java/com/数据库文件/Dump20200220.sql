CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `content` mediumtext NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amountOfReading` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'关于','诸葛亮于汉灵帝光和四年（181年）出生在琅琊郡阳都县的一个官吏之家，诸葛氏是琅琊的望族，先祖诸葛丰曾在西汉元帝时做过司隶校尉，诸葛亮的父亲诸葛珪在东汉末年做过泰山郡丞； [2] 诸葛亮3岁时母亲章氏病逝，诸葛亮8岁时丧父，与弟弟诸葛均一起跟随由袁术任命为豫章太守的叔父诸葛玄到豫章（今江西南昌）赴任，东汉朝廷派朱皓取代了诸葛玄职务，诸葛玄就去投奔荆州刘表。','2020-02-20 07:09:51',3);
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `blogId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `edits` mediumtext NOT NULL,
  `blogStatus` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amountOfReading` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blogId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'SSM框架整合笔记','# SSM框架学习笔记\r\n\r\nSSM（Spring+SpringMVC+MyBatis）框架集由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。常作为数据源较简单的web项目的框架。\r\n\r\n## SSM框架配置过程\r\n 1. 新建Maven项目，添加依赖和资源过滤，添加web支持\r\n 2. 搭建项目的基本结构：\r\n com.\\*\\*.contorller\r\n com.\\*\\*.service\r\n com.\\*\\*.pojo\r\n com.\\*\\*.dao\r\n com.\\*\\*.interceptor(拦截器层)\r\n 3. 配置mybatis-config.xml\r\n 4. 配置applicationContext.xml\r\n 5. 配置database.properties\r\n 6. IDEA关联database\r\n 7. 配置database.properties\r\n 8. 新建实体类\r\n 9. 编写dao层的mapper接口\r\n 10. 编写dao层的mapper.xml文件\r\n 11. 编写service的接口并实现\r\n 12. 配置spring-dao.xml\r\n 13. 配置spring-service.xml\r\n 14. 配置spring-mvc.xml\r\n 15. 配置web.xml\r\n 16. 编写contorller层的代码和一些jsp文件\r\n \r\n\r\n\r\nPS:要在Project Structure中的WEB-INF新建一个lib文件夹，在文件中添加相关jar包（不然会报错）\r\n\r\n## mybatis-config.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE configuration\r\n        PUBLIC \"-//mybatis.org//DTD Config 3.0//EN\"\r\n        \"http://mybatis.org/dtd/mybatis-3-config.dtd\">\r\n<configuration>\r\n    <typeAliases>\r\n        <package name=\"com.**.pojo\"/>\r\n    </typeAliases>\r\n    <mappers>\r\n        <mapper resource=\"com/**/dao/**Mapper.xml\"/>\r\n        <mapper resource=\"com/**/dao/**Mapper.xml\"/>\r\n    </mappers>\r\n\r\n</configuration>\r\n```\r\n## **Mapper.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE mapper\r\n        PUBLIC \"-//mybatis.org//DTD Config 3.0//EN\"\r\n        \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\r\n<mapper namespace=\"com.kuang.dao.**Mapper\">\r\n    <insert>\r\n        \r\n    </insert>\r\n    <delete>\r\n        \r\n    </delete>\r\n    <update>\r\n      \r\n    </update>\r\n    <select>\r\n        \r\n    </select>\r\n</mapper>\r\n```\r\n\r\n## database.properties\r\n\r\n```\r\njdbc.driver=com.mysql.jdbc.Driver\r\njdbc.url=jdbc:mysql://localhost:3306/ssmbuild?useSSL=true&useUnicode=true&characterEncoding=utf8&serverTimezone=GMT\r\njdbc.username=***\r\njdbc.password=***\r\n```\r\n\r\n## spring-dao.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\nhttp://www.springframework.org/schema/beans/spring-beans.xsd\r\nhttp://www.springframework.org/schema/context\r\nhttps://www.springframework.org/schema/context/spring-context.xsd\">\r\n\r\n    <!-- 配置整合mybatis -->\r\n    <!-- 1.关联数据库文件 -->\r\n    <context:property-placeholder location=\"classpath:database.properties\"/>\r\n\r\n    <!-- 2.数据库连接池 -->\r\n    <!--数据库连接池\r\ndbcp  半自动化操作  不能自动连接\r\nc3p0  自动化操作（自动的加载配置文件 并且设置到对象里面）\r\n    -->\r\n    <bean id=\"dataSource\" class=\"com.mchange.v2.c3p0.ComboPooledDataSource\">\r\n        <!-- 配置连接池属性 -->\r\n        <property name=\"driverClass\" value=\"${jdbc.driver}\"/>\r\n        <property name=\"jdbcUrl\" value=\"${jdbc.url}\"/>\r\n        <property name=\"user\" value=\"${jdbc.username}\"/>\r\n        <property name=\"password\" value=\"${jdbc.password}\"/>\r\n\r\n        <!-- c3p0连接池的私有属性 -->\r\n        <property name=\"maxPoolSize\" value=\"30\"/>\r\n        <property name=\"minPoolSize\" value=\"10\"/>\r\n        <!-- 关闭连接后不自动commit -->\r\n        <property name=\"autoCommitOnClose\" value=\"false\"/>\r\n        <!-- 获取连接超时时间 -->\r\n        <property name=\"checkoutTimeout\" value=\"10000\"/>\r\n        <!-- 当获取连接失败重试次数 -->\r\n        <property name=\"acquireRetryAttempts\" value=\"2\"/>\r\n    </bean>\r\n\r\n    <!-- 3.配置SqlSessionFactory对象 -->\r\n    <bean id=\"sqlSessionFactory\" class=\"org.mybatis.spring.SqlSessionFactoryBean\">\r\n        <!-- 注入数据库连接池 -->\r\n        <property name=\"dataSource\" ref=\"dataSource\"/>\r\n        <!-- 配置MyBaties全局配置文件:mybatis-config.xml -->\r\n        <property name=\"configLocation\" value=\"classpath:mybatis-config.xml\"/>\r\n    </bean>\r\n\r\n    <!-- 4.配置扫描Dao接口包，动态实现Dao接口注入到spring容器中 -->\r\n    <!--解释 ： https://www.cnblogs.com/jpfss/p/7799806.html-->\r\n    <bean class=\"org.mybatis.spring.mapper.MapperScannerConfigurer\">\r\n        <!-- 注入sqlSessionFactory -->\r\n        <property name=\"sqlSessionFactoryBeanName\" value=\"sqlSessionFactory\"/>\r\n        <!-- 给出需要扫描Dao接口包 -->\r\n        <property name=\"basePackage\" value=\"com.**.dao\"/>\r\n    </bean>\r\n\r\n</beans>\r\n```\r\n\r\n## spring-service.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n    http://www.springframework.org/schema/beans/spring-beans.xsd\r\n    http://www.springframework.org/schema/context\r\n    http://www.springframework.org/schema/context/spring-context.xsd\">\r\n\r\n    <!-- 扫描service相关的bean -->\r\n    <context:component-scan base-package=\"com.**.service\" />\r\n\r\n    <!--BookServiceImpl注入到IOC容器中-->\r\n    <bean id=\"**ServiceImpl\" class=\"com.**.service.**ServiceImpl\">\r\n        <property name=\"**Mapper\" ref=\"**Mapper\"/>\r\n    </bean>\r\n\r\n    <!-- 配置事务管理器 -->\r\n    <bean id=\"transactionManager\" class=\"org.springframework.jdbc.datasource.DataSourceTransactionManager\">\r\n        <!-- 注入数据库连接池 -->\r\n        <property name=\"dataSource\" ref=\"dataSource\" />\r\n    </bean>\r\n\r\n</beans>\r\n```\r\n\r\n## spring-mvc.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xmlns:context=\"http://www.springframework.org/schema/context\"\r\n       xmlns:mvc=\"http://www.springframework.org/schema/mvc\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n    http://www.springframework.org/schema/beans/spring-beans.xsd\r\n    http://www.springframework.org/schema/context\r\n    http://www.springframework.org/schema/context/spring-context.xsd\r\n    http://www.springframework.org/schema/mvc\r\n    https://www.springframework.org/schema/mvc/spring-mvc.xsd\">\r\n\r\n    <!-- 配置SpringMVC -->\r\n    <!-- 1.开启SpringMVC注解驱动 -->\r\n    <mvc:annotation-driven />\r\n    <!-- 2.静态资源默认servlet配置-->\r\n    <mvc:default-servlet-handler/>\r\n    <mvc:resources location=\"/statics/js/\" mapping=\"/js/**\"/>\r\n    <mvc:resources location=\"/statics/css/\" mapping=\"/css/**\"/>\r\n\r\n    <!-- 3.配置jsp 显示ViewResolver视图解析器 -->\r\n    <bean class=\"org.springframework.web.servlet.view.InternalResourceViewResolver\">\r\n        <property name=\"viewClass\" value=\"org.springframework.web.servlet.view.JstlView\" />\r\n        <property name=\"prefix\" value=\"/WEB-INF/jsp/\" />\r\n        <property name=\"suffix\" value=\".jsp\" />\r\n    </bean>\r\n\r\n    <!-- 4.扫描web相关的bean -->\r\n    <context:component-scan base-package=\"com.kuang.controller\" />\r\n    <!--关于拦截器的配置-->\r\n    <mvc:interceptors>\r\n        <mvc:interceptor>\r\n            <!--/** 包括路径及其子路径-->\r\n            <!--/admin/* 拦截的是/admin/add等等这种 , /admin/add/user不会被拦截-->\r\n            <!--/admin/** 拦截的是/admin/下的所有-->\r\n            <mvc:mapping path=\"/**\"/>\r\n            <!--bean配置的就是拦截器-->\r\n            <bean class=\"com.**.interceptor.**Interceptor\"/>\r\n        </mvc:interceptor>\r\n    </mvc:interceptors>\r\n\r\n</beans>\r\n```\r\n## applicationContext.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<beans xmlns=\"http://www.springframework.org/schema/beans\"\r\n       xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\r\n        http://www.springframework.org/schema/beans/spring-beans.xsd\">\r\n\r\n    <import resource=\"classpath:spring-dao.xml\"/>\r\n    <import resource=\"classpath:spring-service.xml\"/>\r\n    <import resource=\"classpath:spring-mvc.xml\"/>\r\n</beans>\r\n```\r\n## web.xml\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<web-app xmlns=\"http://xmlns.jcp.org/xml/ns/javaee\"\r\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n         xsi:schemaLocation=\"http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd\"\r\n         version=\"4.0\">\r\n\r\n    <!--DispatcherServlet-->\r\n    <servlet>\r\n        <servlet-name>dispatcherServlet</servlet-name>\r\n        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>\r\n        <init-param>\r\n            <param-name>contextConfigLocation</param-name>\r\n            <param-value>classpath:applicationContext.xml</param-value>\r\n        </init-param>\r\n        <load-on-startup>1</load-on-startup>\r\n    </servlet>\r\n    <servlet-mapping>\r\n        <servlet-name>dispatcherServlet</servlet-name>\r\n        <url-pattern>/</url-pattern>\r\n    </servlet-mapping>\r\n\r\n    <!--encodingFilter-->\r\n    <filter>\r\n        <filter-name>encodingFilter</filter-name>\r\n        <filter-class>\r\n            org.springframework.web.filter.CharacterEncodingFilter\r\n        </filter-class>\r\n        <init-param>\r\n            <param-name>encoding</param-name>\r\n            <param-value>utf-8</param-value>\r\n        </init-param>\r\n    </filter>\r\n    <filter-mapping>\r\n        <filter-name>encodingFilter</filter-name>\r\n        <url-pattern>/*</url-pattern>\r\n    </filter-mapping>\r\n\r\n    <!--Session过期时间-->\r\n    <session-config>\r\n        <session-timeout>15</session-timeout>\r\n    </session-config>\r\n\r\n</web-app>\r\n```\r\n## 相关的pom依赖以及Maven资源过滤设置\r\n\r\n```\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<project xmlns=\"http://maven.apache.org/POM/4.0.0\"\r\n         xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n         xsi:schemaLocation=\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd\">\r\n    <modelVersion>4.0.0</modelVersion>\r\n\r\n    <groupId>com.kuang</groupId>\r\n    <artifactId>ssmbuild</artifactId>\r\n    <version>1.0-SNAPSHOT</version>\r\n\r\n    <dependencies>\r\n        <!--Junit-->\r\n        <dependency>\r\n            <groupId>junit</groupId>\r\n            <artifactId>junit</artifactId>\r\n            <version>4.12</version>\r\n        </dependency>\r\n        <!--数据库驱动-->\r\n        <dependency>\r\n            <groupId>mysql</groupId>\r\n            <artifactId>mysql-connector-java</artifactId>\r\n            <version>5.1.47</version>\r\n        </dependency>\r\n        <!-- 数据库连接池 -->\r\n        <dependency>\r\n            <groupId>com.mchange</groupId>\r\n            <artifactId>c3p0</artifactId>\r\n            <version>0.9.5.2</version>\r\n        </dependency>\r\n\r\n        <!--Servlet - JSP -->\r\n        <dependency>\r\n            <groupId>javax.servlet</groupId>\r\n            <artifactId>servlet-api</artifactId>\r\n            <version>2.5</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>javax.servlet.jsp</groupId>\r\n            <artifactId>jsp-api</artifactId>\r\n            <version>2.2</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>javax.servlet</groupId>\r\n            <artifactId>jstl</artifactId>\r\n            <version>1.2</version>\r\n        </dependency>\r\n\r\n        <!--Mybatis-->\r\n        <dependency>\r\n            <groupId>org.mybatis</groupId>\r\n            <artifactId>mybatis</artifactId>\r\n            <version>3.5.2</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.mybatis</groupId>\r\n            <artifactId>mybatis-spring</artifactId>\r\n            <version>2.0.2</version>\r\n        </dependency>\r\n\r\n        <!--Spring-->\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-webmvc</artifactId>\r\n            <version>5.1.9.RELEASE</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-jdbc</artifactId>\r\n            <version>5.1.9.RELEASE</version>\r\n        </dependency>\r\n\r\n\r\n        <dependency>\r\n            <groupId>org.projectlombok</groupId>\r\n            <artifactId>lombok</artifactId>\r\n            <version>1.16.10</version>\r\n        </dependency>\r\n        <!-- https://mvnrepository.com/artifact/com.google.code.gson/gson -->\r\n        <dependency>\r\n            <groupId>com.google.code.gson</groupId>\r\n            <artifactId>gson</artifactId>\r\n            <version>2.8.6</version>\r\n        </dependency>\r\n    </dependencies>\r\n\r\n    <build>\r\n        <resources>\r\n            <resource>\r\n                <directory>src/main/java</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n            <resource>\r\n                <directory>src/main/resources</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n        </resources>\r\n    </build>\r\n\r\n\r\n</project>\r\n```\r\n## 一些小问题\r\n\r\n - 静态资源要放在web/stastics文件夹下\r\n - jsp文件要放在WEB-INF/jsp文件夹下，index.jsp除外\r\n - **记住一定要为WEB-INF下的lib添加相关的jar包**\r\n - 如果修改或添加静态资源后确定静态资源的加载路径没有错的情况下还出现静态资源加载出错，就尝试重启一下IDEA\r\n - ajax的中文返回值乱码问题可以尝试用@RequestMapping(value = \"**\",produces = \"text/html;charset=UTF-8\")注解解决\r\n - 常用注解有：@Controller、@RequestMapping、@ResponseBody、@Autowired、@Qualifier\r\n - 新建的jsp文件记得添加<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>\r\n - lombok需要下载插件才能使用\r\n \r\n\r\n参考至https://blog.kuangstudy.com/index.php/archives/487/',1,'2020-02-20 08:45:32',9),(3,'Tools','[TOC]\r\n\r\n#### Disabled options\r\n\r\n- TeX (Based on KaTeX);\r\n- Emoji;\r\n- Task lists;\r\n- HTML tags decode;\r\n- Flowchart and Sequence Diagram;\r\n\r\n#### Editor.md directory\r\n\r\n    editor.md/\r\n            lib/\r\n            css/\r\n            scss/\r\n            tests/\r\n            fonts/\r\n            images/\r\n            plugins/\r\n            examples/\r\n            languages/     \r\n            editormd.js\r\n            ...\r\n\r\n```html\r\n&lt;!-- English --&gt;\r\n&lt;script src=\"../dist/js/languages/en.js\"&gt;&lt;/script&gt;\r\n\r\n&lt;!-- 繁體中文 --&gt;\r\n&lt;script src=\"../dist/js/languages/zh-tw.js\"&gt;&lt;/script&gt;\r\n```',0,'2020-02-20 08:45:27',0),(4,'简记','[TOC]\r\n\r\n#### Disabled options\r\n\r\n- TeX (Based on KaTeX);\r\n- Emoji;\r\n- Task lists;\r\n- HTML tags decode;\r\n- Flowchart and Sequence Diagram;\r\n\r\n#### Editor.md directory\r\n\r\n    editor.md/\r\n            lib/\r\n            css/\r\n            scss/\r\n            tests/\r\n            fonts/\r\n            images/\r\n            plugins/\r\n            examples/\r\n            languages/     \r\n            editormd.js\r\n            ...\r\n\r\n```html\r\n&lt;!-- English --&gt;\r\n&lt;script src=\"../dist/js/languages/en.js\"&gt;&lt;/script&gt;\r\n\r\n&lt;!-- 繁體中文 --&gt;\r\n&lt;script src=\"../dist/js/languages/zh-tw.js\"&gt;&lt;/script&gt;\r\n```',0,'2020-02-20 08:20:50',0);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavemessages`
--

DROP TABLE IF EXISTS `leavemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leavemessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `content` mediumtext NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavemessages`
--

LOCK TABLES `leavemessages` WRITE;
/*!40000 ALTER TABLE `leavemessages` DISABLE KEYS */;
INSERT INTO `leavemessages` VALUES (1,'user','5463453','2020-02-20 07:51:25');
/*!40000 ALTER TABLE `leavemessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `accountNumber` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `identityType` int(11) NOT NULL,
  PRIMARY KEY (`accountNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'blog'
--

--
-- Dumping routines for database 'blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20 12:41:26
