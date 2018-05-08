package com.study.mybatis;

import com.study.mybatis.mapper.UserMapper;
import com.study.mybatis.pojo.User;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.InputStream;

/**
 * Unit test for mybatis.
 */
public class TestMybatis {

    @Test
    public void testMapper() throws Exception {
        String resource = "mybatis-config.xml";
        InputStream in = Resources.getResourceAsStream(resource);
        // 加载mybatis-config.xml配置文件，并创建SqlSessionFactory对象
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = sqlSessionFactory.openSession();
        try {
            UserMapper userMapper = session.getMapper(UserMapper.class);
            User user = userMapper.findUserById(10);
            System.out.println(user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

}
