package com.spring.calculator.controller;

import com.spring.calculator.model.*;

import com.spring.calculator.model.Number;
import com.spring.calculator.service.NumberService;
import com.spring.calculator.service.SecurityService;
import com.spring.calculator.service.UserService;
import com.spring.calculator.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.PathVariable;
import javax.validation.Valid;
import java.util.HashMap;

// @RestController negrąžina view.
// Kadangi mums reikia grąžinti view pagal Spring MVC, naudojame @Controller
@Controller
//  @EnableAutoConfiguration - žymi konfigūracijos komponentą. Viduje leidžia kurti bean per metodus su @Bean
//  Ši klasės lygio anotacija nurodo Spring karkasui “atspėti” konfigūraciją,
//  remiantis priklausomybėmis (jar bibliotekos), kurias programuotojas įtraukė į projektą.
//  Šiuo atveju ji veikia kartu su main metodu.
@EnableAutoConfiguration
public class CalculatorController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;
    // autowire- naudojamas automatinei priklausomybių injekcijai
    // Kad panaudoti @Autowired anotaciją, reikia pirmiausiai turėti apsirašius @Bean @Configuration klasėje
 /*    @Autowired
    // @Qualifier anotacija kartu su @Autowired patikslina su kuriuo konkrečiai bean susieti priklausomybę.
    // Jeigu @Configuration klasėje yra daugiau negu vienas bean, @Qualifier anotacija yra privaloma,
    // kitu atveju metama klaida:
    // 'Consider marking one of the beans as @Primary, updating the consumer to accept multiple beans,
    // or using @Qualifier to identify the bean that should be consumed'
    @Qualifier("NumberServiceImpl")
    public NumberService numberService;

    // Maršrutizavimo informacija. Šiuo atveju, ji nurodo Spring karkasui,
    // jog visas HTTP užklausas, kurių kelias yra “/” apdoros metodas “home”.
    @GetMapping({"/", "/skaiciuotuvas"})
    String home(Model model) {
        // Jeigu Model 'number' nepraeina validacijos - per jį grąžinamos validacijos klaidos į View
        model.addAttribute("number", new Number());
        // grąžiname JSP failą, turi būti talpinami 'webapp -> WEB-INF -> jsp' aplanke
        return "skaiciuotuvas";
    }

    // Kadangi skaičiuotuvo forma naudoja POST metodą, čia irgi nurodome POST
    // SVARBU: parametras BindingResult turi eiti iškarto po anotacijos @Valid
    // kitu atveju bus 'Validation failed for object'
    @RequestMapping(method = RequestMethod.POST, value = "/skaiciuoti")
    String skaiciuoti(@Valid @ModelAttribute("number") Number e, BindingResult br,
                      @RequestParam HashMap<String, String> skaiciai, ModelMap modelMap) {

        if(br.hasErrors()){ // jeigu validacijos klaidos (žr. Number klasėje aprašytą validaciją prie kiekvieno skaičiaus)
            return "skaiciuotuvas"; // vartotojas lieka skaičiuotuvo lange tol, kol neištaiso validacijos klaidų
        } else { // praėjo validaciją- skaičiuojamas rezultatas
            int sk1 = Integer.parseInt(skaiciai.get("sk1"));
            int sk2 = Integer.parseInt(skaiciai.get("sk2"));
            String zenklas = skaiciai.get("zenklas");

            int rezultatas = 0;
            if (zenklas.equals("+")) {
                rezultatas = sk1 + sk2;
            } else if (zenklas.equals("-")) {
                rezultatas = sk1 - sk2;
            } else if (zenklas.equals("*")) {
                rezultatas = sk1 * sk2;
            } else if (zenklas.equals("/")) {
                rezultatas = sk1 / sk2;
            }

            // ModelMap objektas naudojamas siųsti reikšmes iš Spring MVC controller į JSP
            modelMap.put("sk1", sk1);
            modelMap.put("sk2", sk2);
            modelMap.put("zenklas", zenklas);
            modelMap.put("rezultatas", rezultatas);

            // Kreipiamės į service, kuris savo ruožtu kreipiasi į DAO ir išsaugo irašą DB
            numberService.save(new Number(sk1, sk2, zenklas, rezultatas));

            return "skaiciuoti";
        }
    }

    @RequestMapping(method = RequestMethod.GET, value = "/skaiciai")
    public String getAllNumbers(Model model) {
        model.addAttribute("skaiciai", numberService.getAll());
        return "skaiciai";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rodyti{id}")
    public String getById(@RequestParam("id") int id, Model model) {
        model.addAttribute("skaicius", numberService.getById(id));
        return "skaicius";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/trinti{id}")
    public String delete(@RequestParam("id") int id, Model model) {
        numberService.delete(id);
        model.addAttribute("skaiciai", numberService.getAll());
        return "skaiciai";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/atnaujinti{id}")
    public String update(@RequestParam("id") int id, Model model) {
        model.addAttribute("skaicius", numberService.getById(id));
        return "atnaujinti";
    }

    // Kadangi atnaujinti skaičių forma naudoja POST metodą, čia irgi nurodome POST
    @RequestMapping(method = RequestMethod.POST, value = "/atnaujintiSkaiciu")
    public String updateNumber(@ModelAttribute("skaicius") Number number) {
        numberService.update(number);
        return "redirect:/rodyti?id=" + number.getId();
    }


    */



    @Autowired
    @Qualifier("TrickDAO")
    public TrickDAO trickDAO;


    @GetMapping("/")
    public String homePage(Model model) {
    /*    List<Trick> trickList = trickDAO.findEntities();
        System.out.println("Trick sąrašas:");
        for (Trick trick : trickList) {
            System.out.println(trick.toString());
        } */  // konsolėje tikrinti
        model.addAttribute("tricks2", trickDAO.findEntities());
        return "listOfAllTricks";
    }


    @GetMapping("/addTrick")
    public String addTrickBlank(Model model) {
        //jeigu Model 'number' nepraeina validacijos per jį grąžinamos validacijos klaidos į View
        model.addAttribute("addTr", new Trick());
        //grąžiname JSP failą, kuris turi būti talpinamas "webapp -> WEB-INF ->  JSP" folderi
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
            //   char trick_level= inputForm.get("trick_level") != null ? inputForm.get("trick_level").charAt(0):' ';
            char trick_level = inputForm.get("trick_level").charAt(0);
            //  if(inputForm.get("trick_score") != null && !inputForm.get("trick_score").isEmpty()){
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
