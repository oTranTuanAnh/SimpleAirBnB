package model;

public class House {
    private int id;
    private int customerNumber, livingRoom, bedRoom, bathRoom, toilet;
    private String address;
    private double price;
    private String picture;
    private int owner_id;

    public House() {
    }

    public House(int customerNumber, int livingRoom, int bedRoom, int bathRoom, int toilet, String address, double price, String picture) {
        this.customerNumber = customerNumber;
        this.livingRoom = livingRoom;
        this.bedRoom = bedRoom;
        this.bathRoom = bathRoom;
        this.toilet = toilet;
        this.address = address;
        this.price = price;
        this.picture = picture;
    }

    public House(int id, int customerNumber, int livingRoom, int bedRoom, int bathRoom, int toilet, String address, double price, String picture) {
        this.id = id;
        this.customerNumber = customerNumber;
        this.livingRoom = livingRoom;
        this.bedRoom = bedRoom;
        this.bathRoom = bathRoom;
        this.toilet = toilet;
        this.address = address;
        this.price = price;
        this.picture = picture;
    }

    public House(int id, int customerNumber, int livingRoom, int bedRoom, int bathRoom, int toilet, String address, double price, String picture, int owner_id) {
        this.id = id;
        this.customerNumber = customerNumber;
        this.livingRoom = livingRoom;
        this.bedRoom = bedRoom;
        this.bathRoom = bathRoom;
        this.toilet = toilet;
        this.address = address;
        this.price = price;
        this.picture = picture;
        this.owner_id = owner_id;
    }

    public int getOwner_id() {
        return owner_id;
    }

    public void setOwner_id(int owner_id) {
        this.owner_id = owner_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerNumber() {
        return customerNumber;
    }

    public void setCustomerNumber(int customerNumber) {
        this.customerNumber = customerNumber;
    }

    public int getLivingRoom() {
        return livingRoom;
    }

    public void setLivingRoom(int livingRoom) {
        this.livingRoom = livingRoom;
    }

    public int getBedRoom() {
        return bedRoom;
    }

    public void setBedRoom(int bedRoom) {
        this.bedRoom = bedRoom;
    }

    public int getBathRoom() {
        return bathRoom;
    }

    public void setBathRoom(int bathRoom) {
        this.bathRoom = bathRoom;
    }

    public int getToilet() {
        return toilet;
    }

    public void setToilet(int toilet) {
        this.toilet = toilet;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
