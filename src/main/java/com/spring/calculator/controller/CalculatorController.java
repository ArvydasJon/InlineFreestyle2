package com.spring.calculator.controller;

import com.spring.calculator.model.*;

import com.spring.calculator.service.SecurityService;
import com.spring.calculator.service.UserService;
import com.spring.calculator.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;


@Controller
@EnableAutoConfiguration
public class CalculatorController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;


    @Autowired
    @Qualifier("TrickDAO")
    public TrickDAO trickDAO;


    @GetMapping("/")
    public String homePage(Model model) {
        model.addAttribute("tricks2", trickDAO.findEntities());
        return "listOfAllTricks";
    }

    @GetMapping("/addTrick")
    public String addTrickBlank(Model model) {
        model.addAttribute("addTr", new Trick());
        return "addTrick";
    }


    @PostMapping("/addt")
    public String addTrick(@Valid @ModelAttribute("addTr") Trick trick, BindingResult bindingResult,
                           @RequestParam HashMap<String, String> inputForm, Model model) {
        if (bindingResult.hasErrors()) {
            return "addTrick";
        } else {
            String trick_name = inputForm.get("trick_name");
            String trick_type = inputForm.get("trick_type");
            char trick_level = inputForm.get("trick_level").charAt(0);
            int trick_score = Integer.parseInt(inputForm.get("trick_score"));
            boolean official_score = Boolean.parseBoolean(inputForm.get("official_score"));
            String trick_name2 = inputForm.get("trick_name2");
            String link = inputForm.get("link");

            trickDAO.insertEntity(new Trick(trick_name, trick_type, trick_level, trick_score, official_score, trick_name2, link));
            model.addAttribute("tricks2", trickDAO.findEntities());
            return "listOfAllTricks";
        }
    }
    @RequestMapping(method = RequestMethod.GET, value = "/delete{id}")
    public String deleteById ( @RequestParam("id") int id, Model model){
        trickDAO.removeEntityById(id);
        model.addAttribute("tricks2", trickDAO.findEntities());
        return "listOfAllTricks";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/show{id}")
    public String getById ( @RequestParam("id") int id, Model model){
        model.addAttribute("trick3", trickDAO.findEntityById(id));
        return "trick";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/update{id}")
    public String updateById ( @RequestParam("id") int id, Model model){
        model.addAttribute("trick4", trickDAO.findEntityById(id));
        return "update";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/updateTrick")
    public String updateTrick (@ModelAttribute("trick4") Trick trick){
        trickDAO.updateEntity(trick);
        return "redirect:/show?id=" + trick.getId();
    }



    @GetMapping("/registruoti")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registruoti";
    }

    @PostMapping("/registruoti")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registruoti";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/";
    }

    @GetMapping("/prisijungti")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "The username or password is incorrect");

        if (logout != null)
            model.addAttribute("message", "You have successfully logged out");

        return "prisijungti";

    }

    @GetMapping("/403")
    public String _403() {
        return "403";
    }

}
