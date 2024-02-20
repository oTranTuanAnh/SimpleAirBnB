package model;

import java.time.LocalDate;

public class Bill {
    private int id;
    private LocalDate startDate;
    private LocalDate endDate;
    private double totalPrice;

    public Bill() {
    }

    public Bill(LocalDate startDate, LocalDate endDate, double totalPrice) {
        this.startDate = startDate;
        this.endDate = endDate;
        this.totalPrice = totalPrice;
    }

    public Bill(int id, LocalDate startDate, LocalDate endDate, double totalPrice) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.totalPrice = totalPrice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
