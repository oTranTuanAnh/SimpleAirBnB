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
        return null;
    }

    @Override
    public void save(House p) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void edit(int id, House house) {

    }
}
