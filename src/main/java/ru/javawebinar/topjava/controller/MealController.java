package ru.javawebinar.topjava.controller;


import org.springframework.stereotype.Controller;
import ru.javawebinar.topjava.model.MealWithExceed;

import java.util.List;
@Controller

public class MealController {
    private static MealWithExceed meal;

    public void setMeal(MealWithExceed meal){
        this.meal = meal;
    }




}
