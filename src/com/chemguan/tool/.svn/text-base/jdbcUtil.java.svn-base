package com.chemguan.tool;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 * jdbc工具类
 * 
 * @author SweetBoy
 * 
 */
public class jdbcUtil
{
    private static String file = "com/chemguan/tool/jdbc.properties";
    
    private static String driver;
    
    private static String url;
    
    private static String user;
    
    private static String password;
    
    /**
     * 静态工厂，加载配置信息
     */
    static
    {
        Properties pro = new Properties();
        // 通过反射获得类的加载器
        InputStream in = jdbcUtil.class.getClassLoader().getResourceAsStream(file);
        
        try
        {
            pro.load(in);
            driver = pro.getProperty("driver");
            url = pro.getProperty("url");
            user = pro.getProperty("user");
            password = pro.getProperty("password");
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        
    }
    
    /**
     * 静态方法，获得jdbc的驱动
     */
    static
    {
        try
        {
            Class.forName(driver);
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
    }
    
    /**
     * 获得jdbc的连接Connection
     */
    public static Connection getConnection()
    {
        Connection connection = null;
        
        try
        {
            connection = DriverManager.getConnection(url, user, password);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return connection;
    }
    
    /**
     * 获得sql的执行对象statement
     */
    public static Statement getStatement(Connection connection)
    {
        Statement statement = null;
        try
        {
            statement = connection.createStatement();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return statement;
        
    }
    
    /**
     * 关闭Connection资源
     */
    public static void closeConn(Connection connection)
    {
        if (connection != null)
        {
            try
            {
                connection.close();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }
    
    /**
     * 关闭Statement资源
     */
    public static void closeStatement(Statement statement)
    {
        if (statement != null)
        {
            try
            {
                statement.close();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
        
    }
    
    /**
     * 关闭Resultset资源
     */
    public static void closeResult(ResultSet resultSet)
    {
        if (resultSet != null)
        {
            try
            {
                resultSet.close();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }
}

