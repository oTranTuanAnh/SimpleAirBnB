package controller;


import model.House;
import model.Owner;
import service.house.HouseService;
import service.house.IHouseService;
import service.owner.IOwnerService;
import service.owner.OwnerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/houses")
public class HouseServlet extends HttpServlet {
    IHouseService houseService = new HouseService();
    IOwnerService ownerService= new OwnerService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String act = req.getParameter("action");
        if (act == null){
            act = "";
        }
        switch (act){
            case "createNewPlace":
                showFormCreateNewPlace(req, resp);
                break;
            case "createNewOwner":
                showFormCreateNewOwner(req, resp);
                break;
            case "detail":
                showFormDetail(req, resp);
                break;
            case "delete":
                showFormDelete(req, resp);
                break;
            case "edit":
//                showFormEdit(req, resp);
                break;
            default:
                showHomePage(req, resp);

        }

    }

    private void showFormDelete(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("delete/delete.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showFormDetail(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("detail/detail.jsp");
        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("houses", houseService.findById(id));
        int o_id = houseService.findById(id).getOwner_id();
        req.setAttribute("owner", ownerService.findById(o_id));
        int random_int = (int)(Math.random() * (101) + 0);
        req.setAttribute("reviews", random_int);
        req.setAttribute("stars", getRamdomStar());

        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private List<Integer> getRamdomStar() {
        List<Integer> list = new ArrayList<>();
        int random_int = (int)(Math.random() * (6) + 1);
        for (int i = 0; i < random_int; i++) {
            list.add(i);

        }
        return list;

    }

    private void showFormCreateNewOwner(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("create/createOwnerForm.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showFormCreateNewPlace(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("create/createPlaceForm.jsp");
        req.setAttribute("owners", ownerService.findAll());
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showHomePage(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher =req.getRequestDispatcher("/index.jsp");
        List<House> houseList = houseService.findAll();
        req.setAttribute("houses", houseList);
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String act = req.getParameter("action");
        if (act == null){
            act = "";
        }
        switch (act){
            case "createNewPlace":
                createNewPlace(req, resp);
                showHomePage(req, resp);
                break;
            case "createNewOwner":
                createNewOwner(req, resp);
                showHomePage(req, resp);
                break;
            case "delete":
                deleteHouse(req, resp);
                showHomePage(req, resp);
                break;
            case "edit":
//                showFormEdit(req, resp);
                break;
            default:
                showHomePage(req, resp);

        }
    }

    private void deleteHouse(HttpServletRequest req, HttpServletResponse resp) {
        int h_id = Integer.parseInt(req.getParameter("id"));
        houseService.delete(h_id);
    }

    private void createNewPlace(HttpServletRequest req, HttpServletResponse resp) {
        int p_cusNum = Integer.parseInt(req.getParameter("customer_number"));
        int p_living = Integer.parseInt(req.getParameter("living_room"));
        int p_bed = Integer.parseInt(req.getParameter("bed_room"));
        int p_bath = Integer.parseInt(req.getParameter("living_room"));
        int p_toilet = Integer.parseInt(req.getParameter("toilet"));
        String p_address = req.getParameter("address");
        double p_price = Double.parseDouble(req.getParameter("price"));
        String p_picture = req.getParameter("picture");
        int p_owner = Integer.parseInt(req.getParameter("owners"));
        House house = new House(p_cusNum, p_living, p_bed, p_bath, p_toilet, p_address, p_price, p_picture, p_owner);
        houseService.save(house);


    }

    private void createNewOwner(HttpServletRequest req, HttpServletResponse resp) {
            String o_name = req.getParameter("name");
            String o_phone = req.getParameter("phone");
            String o_province = req.getParameter("province");
            Owner owner = new Owner(o_name, o_phone, o_province);
            ownerService.save(owner);

    }
}
