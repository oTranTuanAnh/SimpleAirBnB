package model;

public class Owner {
    private int id;
    private String name;
    private String phone;
    private String province;

    public Owner() {
    }

    public Owner(String name, String phone, String province) {
        this.name = name;
        this.phone = phone;
        this.province = province;
    }

    public Owner(int id, String name, String phone, String province) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.province = province;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }
}
