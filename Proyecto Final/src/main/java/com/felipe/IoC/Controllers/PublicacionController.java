package com.felipe.IoC.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.felipe.IoC.Models.*;
import com.felipe.IoC.Services.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.felipe.IoC.Models.Ciudad;
import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.Publicacion;
import com.felipe.IoC.Models.Region;
import com.felipe.IoC.Models.User;
import com.felipe.IoC.Services.CiudadService;
import com.felipe.IoC.Services.MascotaService;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.RegionService;
import com.felipe.IoC.Services.UserService;

import java.util.List;

@Controller
public class PublicacionController {
    private final PublicacionService publicacionService;
    private final MascotaService mascotaService;
    private final UserService userService;
    private final CiudadService ciudadService;
    private final RegionService regionService;

    public PublicacionController(PublicacionService publicacionService, MascotaService mascotaService,
            UserService userService, CiudadService ciudadService, RegionService regionService) {
        this.publicacionService = publicacionService;
        this.mascotaService = mascotaService;
        this.userService = userService;
        this.ciudadService = ciudadService;
        this.regionService = regionService;
    }

    // para ver el crear publicacion get
    @GetMapping("/publicacion")
    public String vercreaPublicacion(@ModelAttribute("publicacion") Publicacion publicacion, Model model,
            HttpSession session) {
        Long id = (Long) session.getAttribute("userId");
        User u = userService.findById(id);

        List<Mascota> mascota = u.getMascotas();
        model.addAttribute("mascota", mascota);

        List<Region> region = regionService.findAll();
        model.addAttribute("region", region);

        List<Ciudad> ciudades = ciudadService.findAll();
        model.addAttribute("ciudad", ciudades);

        return "publicacion";
    }

    // para crear publicacion por post(muestra la mascota en lista)
    @PostMapping("/publicacion")
    public String crearPublicacion(@Valid @ModelAttribute("publicacion") Publicacion publicacion, BindingResult result,
            HttpSession session, Model model) {
        if (result.hasErrors()) {

            Long id = (Long) session.getAttribute("userId");
            User u = userService.findById(id);
            Region r = regionService.findById(id);
            publicacion.setUser(u);

            List<Region> region = regionService.findAll();
            model.addAttribute("region", region);

            List<Ciudad> ciudades = r.getCiudades();
            model.addAttribute("ciudad", ciudades);

            List<Mascota> mascota = u.getMascotas();
            model.addAttribute("mascota", mascota);

            return "publicacion";
        } else {
            Long id = (Long) session.getAttribute("userId");
            User u = userService.findById(id);
            publicacion.setUser(u);
            publicacionService.save(publicacion);
            return "redirect:/";
        }
    }

    // para ver detalle de publicacion y mascota
    @GetMapping("/detalle/{id}")
    public String detallePublicyMascot(@PathVariable("id") Long id, Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("userId");
        if (userId!=null) {
            User user =  userService.findById(userId);
            model.addAttribute("user", user);
        }

        Mascota mascota = mascotaService.findById(id);
        model.addAttribute("mascota", mascota);

        Publicacion publicacion = publicacionService.findById(id);
        model.addAttribute("publicacion", publicacion);
        
        return "detalle";
    }

    // para editar publicacion y luego editar mascota
    @GetMapping("/publicacion/{id}/edit")
    public String editPublic(@PathVariable("id") Long id, Model model) {

        Publicacion publicacion = publicacionService.findById(id);
        model.addAttribute("publicacion", publicacion);
        Region r = regionService.findById(id);
        User u = userService.findById(id);
        

        List<Region> region = regionService.findAll();
        model.addAttribute("region", region);

        List<Ciudad> ciudades = r.getCiudades();
        model.addAttribute("ciudad", ciudades);

        List<Mascota> mascota = u.getMascotas();
        model.addAttribute("mascota", mascota);
        System.out.println(mascota);

        return "editP";
    }

    // para editar info publicacion put
    @PutMapping("/publicacion/{id}/edit")
    public String editarPublic(@Valid @ModelAttribute("publicacion") Publicacion publicacion, BindingResult result,
            HttpSession session, Model model) {
        if (result.hasErrors()) {

            Long id = (Long) session.getAttribute("userId");
            User u = userService.findById(id);
            Region r = regionService.findById(id);
            publicacion.setUser(u);

            List<Region> region = regionService.findAll();
            model.addAttribute("region", region);

            List<Ciudad> ciudades = r.getCiudades();
            model.addAttribute("ciudad", ciudades);

            List<Mascota> mascota = u.getMascotas();
            model.addAttribute("mascota", mascota);

            return "publicacion";
        } else {
            Long id = (Long) session.getAttribute("userId");
            User u = userService.findById(id);

            publicacion.setUser(u);
            publicacionService.save(publicacion);
            return "redirect:/";
        }
    }


}
