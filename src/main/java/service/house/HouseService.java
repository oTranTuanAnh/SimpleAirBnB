package service.house;

import connection.ConnectionJDBC;
import model.House;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HouseService implements IHouseService{
    public static final String SELECT_ALL_FROM_HOUSES = "select * from houses;";
    public static final String INSERT_INTO_HOUSES_VALUES = "insert into houses(customer_number, living_room, bed_room, bath_room, toilet, address, price, picture, owner_id) VALUES(?,?,?,?,?,?,?,?,?);";
    public static final String SELECT_FROM_HOUSES_WHERE_ID = "select * from houses where id=?;";
    public static final String DELETE_FROM_HOUSES_WHERE_ID = "delete from houses where id = ?;";
    Connection connection = ConnectionJDBC.getConnection();
    @Override
    public List<House> findAll() {
        List<House> houseList = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_FROM_HOUSES);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int h_id = resultSet.getInt("id");
                int h_cusNum = resultSet.getInt("customer_number");
                int h_living = resultSet.getInt("living_room");
                int h_bed = resultSet.getInt("bed_room");
                int h_bath = resultSet.getInt("bath_room");
                int h_toilet = resultSet.getInt("toilet");
                String h_add = resultSet.getNString("address");
                double h_price = resultSet.getDouble("price");
                String h_pic = resultSet.getString("picture");
                int h_o_id = resultSet.getInt("owner_id");
                House house = new House(h_id,h_cusNum,h_living,h_bed,h_bath,h_toilet,h_add,h_price,h_pic,h_o_id);
                houseList.add(house);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return houseList;

    }

    @Override
    public House findById(int id) {
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_FROM_HOUSES_WHERE_ID);
            statement.setString(1, String.valueOf(id));
            ResultSet resultSet = statement.executeQuery();
            House house = null;
            while (resultSet.next()){
                int h_id = resultSet.getInt("id");
                int h_cusNum = resultSet.getInt("customer_number");
                int h_living = resultSet.getInt("living_room");
                int h_bed = resultSet.getInt("bed_room");
                int h_bath = resultSet.getInt("bath_room");
                int h_toilet = resultSet.getInt("toilet");
                String h_add = resultSet.getNString("address");
                double h_price = resultSet.getDouble("price");
                String h_pic = resultSet.getString("picture");
                int h_o_id = resultSet.getInt("owner_id");
                house = new House(h_id,h_cusNum,h_living,h_bed,h_bath,h_toilet,h_add,h_price,h_pic,h_o_id);
            }
            return house;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void save(House p) {
        try {
            PreparedStatement statement = connection.prepareStatement(INSERT_INTO_HOUSES_VALUES);
            statement.setString(1, String.valueOf(p.getCustomerNumber()));
            statement.setString(2, String.valueOf(p.getLivingRoom()));
            statement.setString(3, String.valueOf(p.getBedRoom()));
            statement.setString(4, String.valueOf(p.getBathRoom()));
            statement.setString(5, String.valueOf(p.getToilet()));
            statement.setString(6, p.getAddress());
            statement.setString(7, String.valueOf(p.getPrice()));
            statement.setString(8, p.getPicture());
            statement.setString(9, String.valueOf(p.getOwner_id()));
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(int id) {
        try {
            PreparedStatement statement = connection.prepareStatement(DELETE_FROM_HOUSES_WHERE_ID);
            statement.setString(1, String.valueOf(id));
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void edit(int id, House house) {

    }
}
