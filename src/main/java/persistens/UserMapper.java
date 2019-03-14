package persistens;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserMapper {


public static List<User> getUser() {

    List<User> users = new ArrayList<>();

    try {
        Connection connection = Connector.connection();
        String sql = "select * from kunder";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet resultSet = ps.executeQuery();


        while (resultSet.next()) {

            User user = new User();
            user.setKundenr(resultSet.getInt(1));
            user.setNavn(resultSet.getString(2));
            users.add(user);
        }


    } catch (ClassNotFoundException e) {
        System.out.println("fejl i db");;
        e.printStackTrace();
    } catch (SQLException e) {
        System.out.println("fejl i db");;
    }


    return users;
}


}
