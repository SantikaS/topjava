package ru.javawebinar.topjava.web;
import ru.javawebinar.topjava.model.MealWithExceed;
import org.slf4j.Logger;
import ru.javawebinar.topjava.util.Meals;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static org.slf4j.LoggerFactory.getLogger;

public class MealServlet extends HttpServlet {
    private static final Logger log = getLogger(UserServlet.class);
    List<MealWithExceed> mealWithExceededList = new Meals().getMealsWithExceeded();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        log.debug("redirect to meals");
        request.setAttribute("listMeals",mealWithExceededList);
        request.getRequestDispatcher("/meals.jsp").forward(request, response);
        //response.sendRedirect("meals.jsp");

    }
}
