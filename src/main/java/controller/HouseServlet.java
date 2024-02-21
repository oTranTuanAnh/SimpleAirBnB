package controller;

import model.House;
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
            case "delete":
//                showFormDelete(req, resp);
                break;
            case "edit":
//                showFormEdit(req, resp);
                break;
            default:
                showHomePage(req, resp);

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
            case "create":
//                showFormCreate(req, resp);
                break;
            case "delete":
//                showFormDelete(req, resp);
                break;
            case "edit":
//                showFormEdit(req, resp);
                break;
            default:
                showHomePage(req, resp);

        }
    }
}
