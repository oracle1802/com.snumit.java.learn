package com.snumit.java.learn;

import oracle.jdbc.pool.OracleDataSource;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.sql.*;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * Created by Andrey Lyudvinskij on 14.03.2017.
 */
@Controller
public class SomeClass {
    private int visitorCount = 0;
    private String userName = "";

    private OracleDataSource setDataSource;

    // welcome page
    @RequestMapping("/")
    public String index(Model model) {
        return "WEB-INF/jsp/index.jsp";
    }

    @Autowired
    private oracle.jdbc.pool.OracleDataSource dataSource;

    @Autowired
    private org.springframework.jdbc.core.JdbcTemplate jdbcTemplate;


    @RequestMapping("/index2.html")
    public String index2(Model model) throws SQLException {

        model.addAttribute("visitorCount", visitorCount++);
        model.addAttribute("rowsCount", userName);

//        jdbcTemplate.update("insert into t1 values(?,?,?)", 1, 2, 3);

//        Connection con = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//
//        try {
//
//            if (dataSource == null)
//                System.out.println("DataSource is null");
//            con = dataSource.getConnection();
//            if (con.isClosed()) {
//                System.out.println("connection is closed");
//            }
//
//            stmt = con.createStatement();
//
//            rs = stmt.executeQuery("select count(*) d from t1 ");
//            while(rs.next()){
//                System.out.println("dai$car_docs lines count ="+rs.getString("d"));
//                rowsCount = rs.getInt("d");
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        if (con != null)
//            con.close();
        this.userName = getUserById(1).fullName;
        return "WEB-INF/jsp/index2.jsp";
    }
    public User getUserById(long id) {
        try {


            return jdbcTemplate.queryForObject( // Запрос на получение данных
                    "select user#, username, password , fullName from t1 where user# = ?",
                    new RowMapper<User>() {
                        public User mapRow(ResultSet rs, int rowNum)
                                throws SQLException {
                            User spitter = new User(); // Отображение
                            spitter.setUserId(rs.getLong(1)); // результатов
                            spitter.setUserName(rs.getString(2)); // в объект
                            spitter.setPassword(rs.getString(3));
                            spitter.setFullName(rs.getString(4));
                            return spitter;
                        }
                    },
                    id // Связывание параметров
            );
        } catch (Exception e) {
            return new User();
        }
    }
}
