package service.owner;

import connection.ConnectionJDBC;
import model.Owner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OwnerService implements IOwnerService{
    public static final String SELECT_ALL_FROM_OWNERS = "select * from owners;";
    Connection connection = ConnectionJDBC.getConnection();
    @Override
    public List<Owner> findAll() {
        List<Owner> ownerList = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_FROM_OWNERS);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int o_id = resultSet.getInt("id");
                String o_name = resultSet.getNString("name");
                String o_phone = resultSet.getNString("phone");
                String o_province = resultSet.getNString("province");
                Owner owner = new Owner(o_id,o_name,o_phone,o_province);
                ownerList.add(owner);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return ownerList;

    }

    @Override
    public Owner findById(int id) {
        return null;
    }

    @Override
    public void save(Owner p) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void edit(int id, Owner owner) {

    }
}
