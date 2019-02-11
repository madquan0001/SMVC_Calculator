package controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CalculatorController {
    final String ADD = "Addition(+)";
    final String SUB = "Subtraction(-)";
    final String MUL = "Multiplication(x)";
    final String DIV = "Division(/)";

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(){
        return "index";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String caculator(Model model, @RequestParam("caculator") String caculator,
                            @RequestParam("num1") float num1, @RequestParam("num2") float num2){

        String result = "";
        if(caculator.equals(ADD)){
            result = "Addition: " + (num1 + num2);
        }else if(caculator.equals(SUB)){
            result = "Subtraction: " + (num1 - num2);
        }else if(caculator.equals(MUL)){
            result = "Multiplication: " + (num1 * num2);
        } else result = "Division: " + (num1 / num2);

        model.addAttribute("result", result);
        return "index";
    }
}