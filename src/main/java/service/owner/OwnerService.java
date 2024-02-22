package service.owner;

import connection.ConnectionJDBC;
import model.Owner;
import service.house.HouseService;
import service.house.IHouseService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OwnerService implements IOwnerService{
    public static final String SELECT_ALL_FROM_OWNERS = "select * from owners;";
    public static final String INSERT_INTO_OWNERS_NAME_PHONE_PROVINCE_VALUES = "insert into owners(name, phone, province) VALUES (?,?,?);";
    public static final String SELECT_FROM_OWNERS_WHERE_ID = "select * from owners where id=?;";
    Connection connection = ConnectionJDBC.getConnection();
    IHouseService houseService = new HouseService();
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
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_FROM_OWNERS_WHERE_ID);
            statement.setString(1, String.valueOf(id));
            ResultSet resultSet = statement.executeQuery();
            Owner owner = null;
            while (resultSet.next()){
                String o_name = resultSet.getNString("name");
                String o_phone = resultSet.getNString("phone");
                String o_province = resultSet.getNString("province");
                owner = new Owner(o_name, o_phone, o_province);

            }
            return owner;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void save(Owner p) {
        try {
            PreparedStatement statement =connection.prepareStatement(INSERT_INTO_OWNERS_NAME_PHONE_PROVINCE_VALUES);
            statement.setString(1, p.getName());
            statement.setString(2, p.getPhone());
            statement.setString(3, p.getProvince());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void edit(int id, Owner owner) {

    }
}
