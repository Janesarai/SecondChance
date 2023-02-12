package com.felipe.IoC.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.Publicacion;
import com.felipe.IoC.Models.Region;
import com.felipe.IoC.Models.TipoAnimal;
import com.felipe.IoC.Models.User;
import com.felipe.IoC.Repositories.MascotaRepositoryFiltro;
import com.felipe.IoC.Services.MascotaService;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.RegionService;
import com.felipe.IoC.Services.TipoAnimalService;
import com.felipe.IoC.Services.UserService;

@Controller
public class homeController {
    private final PublicacionService publicacionService;
    private final MascotaService mascotaService;
    private final UserService userService;
    private final TipoAnimalService tipoAnimalService;
    private final RegionService regionService;
    private final MascotaRepositoryFiltro mascotaRepositoryFiltro;

    public homeController(PublicacionService publicacionService, MascotaService mascotaService, UserService userService, TipoAnimalService tipoAnimalService, RegionService regionService, MascotaRepositoryFiltro mascotaRepositoryFiltro){
        this.publicacionService = publicacionService;
        this.mascotaService = mascotaService;
        this.userService = userService;
        this.tipoAnimalService = tipoAnimalService;
        this.regionService = regionService;
        this.mascotaRepositoryFiltro = mascotaRepositoryFiltro;
    }

    @GetMapping(value ={"/"})
    public String home_inicial(Model model, HttpSession session){
        if ((Long)session.getAttribute("userId")!=null) {
            
            User user =  userService.findById((Long)session.getAttribute("userId"));
            model.addAttribute("user", user);
        }
        List<Mascota> mascota;
        mascota = mascotaService.findAll();
        model.addAttribute("mascota", mascota);
        return "home";
    }


    @GetMapping(value ={"/filtroanimal/{tipodeanimal}"})
    public String homeFiltroMascota(@PathVariable(value = "tipodeanimal", required = false) String tipodeanimal, Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if (id!=null) {
            User user =  userService.findById(id);
            model.addAttribute("user", user);
        }
        List<Mascota> mascota;
        if (tipodeanimal == null){
            mascota = mascotaService.findAll();
        }else{
            TipoAnimal tipoAnimal = tipoAnimalService.findTipoAnimalBytipoDeAnimal(tipodeanimal);
            mascota = mascotaService.findAllByTipoAnimal(tipoAnimal);
            System.out.println(mascota);
        }

        model.addAttribute("mascota", mascota);
        return "home";
    }

    //para intentar filtrar las regiones
    @GetMapping(value ={"/filtroregion/{region}"})
    public String homeeregion(@PathVariable(value = "region", required = false)Long regionId,
                        Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if (id!=null) {
            User user =  userService.findById(id);
            model.addAttribute("user", user);
        }
        List<Mascota> mascota;
        if (regionId == null){
            mascota = mascotaService.findAll();
        }else{
            mascota = mascotaRepositoryFiltro.findAllByRegion(regionId);
            System.out.println(mascota);
        }
        model.addAttribute("mascota", mascota);
        return "home";
    }

    @GetMapping("/quienesSomos")
    public String quienSomos(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if ((Long)session.getAttribute("userId")!=null) {
            
            User user =  userService.findById((Long)session.getAttribute("userId"));
            model.addAttribute("user", user);
        }
        model.addAttribute("userId", id);
        return "quienesSomos";
    }

    @GetMapping("/dona")
    public String donacion(Model model,HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if (id!=null) {
            User user =  userService.findById(id);
            model.addAttribute("user", user);
        }
        return "dona";
    }

    @GetMapping("/hazteSocio")
    public String hasteSocio(Model model,HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if (id!=null) {
            User user =  userService.findById(id);
            model.addAttribute("user", user);
        }
        return "hazteSocio";
    }

    @GetMapping("/fundaciones")
    public String fundaciones(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if (id!=null) {
            User user =  userService.findById(id);
            model.addAttribute("user", user);
        }
        return "fundaciones";
    }

    @GetMapping("/como-Adoptar-A-Tu-Mascota")
    public String comoAdoptar(Model model, HttpSession session){
        Long id = (Long)session.getAttribute("userId");
        if (id!=null) {
            User user =  userService.findById(id);
            model.addAttribute("user", user);
        }
        return "comoAdoptar";
    }
}
