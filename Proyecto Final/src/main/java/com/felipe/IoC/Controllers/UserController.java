package com.felipe.IoC.Controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.felipe.IoC.Models.User;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.UserService;

@Controller
public class UserController {
    private final UserService userService;
    private final PublicacionService publicacionService;

    public UserController(UserService userService, PublicacionService publicacionService) {
        this.userService = userService;
        this.publicacionService = publicacionService;
    }


    //---------------------------------------------register login--------------------------------------------------

    @PostMapping("/registerpost")
    public String indexregister(@Valid @ModelAttribute("user") User user,
                                BindingResult result, HttpSession session, Model model) {
        System.out.println(result.getAllErrors());
        if (result.hasErrors()) {
            return "loginregister.jsp";
        }
        boolean duplicated = userService.duplicatedUser(user.getEmail());
        if (duplicated) {
            model.addAttribute("error", "Correo electronico ya esta en uso! Por favor intenta denuevo con un correo diferente!");
            return "loginregister.jsp";
        }
        User u = userService.registerUser(user);
        session.setAttribute("userId", u.getId());
        return "redirect:/home";
    }

    @RequestMapping("/salir")
    //para deslogearse
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }


    @GetMapping("/iniciasesion/registrate")
    public String vistaRegistro(Model model, HttpSession session, @ModelAttribute("user") User user) {
        return "loginregister.jsp";
    }


    @PostMapping("/loginpost")
    public String indexlogin(@RequestParam("email") String email,
                            @RequestParam("password") String password, Model model, HttpSession session) {
        boolean authenticated = userService.authenticateUser(email, password);
        if (authenticated) {
            User u = userService.findByEmail(email);
            session.setAttribute("userId", u.getId());
            return "redirect:/";
        } else {
            model.addAttribute("error", "porfavor intente otra vez");
            return "loginregister.jsp";
        }
    }
}

    /*@GetMapping("/iniciasesion/registrate")
    public String vistaLogin(){
        return "loginregister.jsp";
    }

    //---------------------------------------------Home--------------------------------------------------

//para ver publicaciones en el home en general




}*/
