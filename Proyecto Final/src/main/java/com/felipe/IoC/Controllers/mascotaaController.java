package com.felipe.IoC.Controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.felipe.IoC.Models.Imagen;
import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.TipoAnimal;
import com.felipe.IoC.Models.User;
import com.felipe.IoC.Services.ImagenService;
import com.felipe.IoC.Services.MascotaService;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.TipoAnimalService;
import com.felipe.IoC.Services.UserService;

@Controller
public class mascotaaController {
    private final MascotaService mascotaService;
    private final UserService userService;
    private final PublicacionService publicacionService;
    private final ImagenService imagenService;
    private final TipoAnimalService tipoAnimalService;

    public mascotaaController(PublicacionService publicacionService, MascotaService mascotaService, UserService userService, ImagenService imagenService, TipoAnimalService tipoAnimalService){
        this.publicacionService = publicacionService;
        this.mascotaService = mascotaService;
        this.userService = userService;
        this.imagenService = imagenService;
        this.tipoAnimalService = tipoAnimalService;
        }

    //mostrar todas las mescotas asociacdas al usuario


    //para ver una mascota en especifico
    // @GetMapping("/mascota/{id}")
    // public String verUnaMascota(@PathVariable("id")Long id, Model model){
    //     Mascota mascota = mascotaService.findById(id);
    //     model.addAttribute("mascota", mascota);
    //     return "";
    // }
    //para ver formulario para agregar mascotas
    @GetMapping("/adopcion")
    public String vercreaMascota(@ModelAttribute("mascota") Mascota mascota, Model model, HttpSession session){
        Long id = (Long) session.getAttribute("userId");
        User u = userService.findById(id);
        List <TipoAnimal> t = tipoAnimalService.findAll();
        model.addAttribute("tipos", t);
        model.addAttribute("user", u);
        return "adopcion";
    }
    

    @PostMapping("/adopcion")
    public String imagenMascot(@Valid @ModelAttribute("mascota")Mascota mascota,BindingResult result, HttpSession session, Model model, @RequestParam("postFile") MultipartFile postFile){
        Long userId = (Long) session.getAttribute("userId");
        if(userId != null){
            User u = userService.findById(userId);
            if(u != null){
                if (result.hasErrors()) {
                    System.out.println("errorrr");
                    return "adopcion";
                }
                if(postFile.isEmpty() == false){
                    String fileName = postFile.getOriginalFilename();
                    String ubicacion = "/image/" + userId;
                    File directory = new File("src/main/resources/static" + ubicacion);
                    if(directory.exists() == false){
                        directory.mkdirs();
                    }
                    try {
                        byte[] bytes = postFile.getBytes();
                        BufferedOutputStream outputStream = new BufferedOutputStream(
                            new FileOutputStream(
                                new File(directory.getAbsolutePath() + "/" + fileName)
                            )
                        );
                        outputStream.write(bytes);
                        outputStream.flush();
                        outputStream.close();
                        System.out.println("El archivo se ha cargado con exito");
                        mascota.setUbicacion(ubicacion + "/" + fileName);
                        mascota.setUser(u);
                        List <TipoAnimal> t = tipoAnimalService.findAll();
                        model.addAttribute("tipos", t);
                        mascotaService.save(mascota);
                    } catch (IOException e) {
                        e.printStackTrace();
                        System.out.println("ocurrio un error al cargar la imagen." + e);
                    }
                }
            }
        }
        return "redirect:/publicacion";
    }
     //paraborrar mascota y publicacion funciona 
    @GetMapping("/mascota/{id}/borrar")
    public String deleteMascot(@PathVariable("id")Long id){
        mascotaService.delete(id);
        publicacionService.delete(id);
        return "redirect:/";
    }

    //para editar info de mascota ver
    @GetMapping("/mascota/{id}/edit")
    public String editMascota(@PathVariable("id")Long id, Model model){
        Mascota mascota = mascotaService.findById(id);
        model.addAttribute("mascota", mascota);
        List <TipoAnimal> t = tipoAnimalService.findAll();
        model.addAttribute("tipos", t);
        return "edit";
    }

    //para editar info put
    @PutMapping("/mascota/{id}/edit")
    public String editarMascota(@Valid @ModelAttribute("mascota") Mascota mascota,BindingResult result, HttpSession session,Model model, @RequestParam("postFile") MultipartFile postFile){
        Long userId =(Long) session.getAttribute("userId");
        User u = userService.findById(userId);
        if (result.hasErrors()) {
            return "edit";
        }
        if(postFile.isEmpty() == false){
            String fileName = postFile.getOriginalFilename();
            String ubicacion = "/image/" + userId;
            File directory = new File("src/main/resources/static" + ubicacion);
            if(directory.exists() == false){
                directory.mkdirs();
            }
            try {
                byte[] bytes = postFile.getBytes();
                BufferedOutputStream outputStream = new BufferedOutputStream(
                    new FileOutputStream(
                        new File(directory.getAbsolutePath() + "/" + fileName)
                    )
                );
                outputStream.write(bytes);
                outputStream.flush();
                outputStream.close();
                System.out.println("El archivo se ha cargado con exito");
                mascota.setUbicacion(ubicacion + "/" + fileName);
                mascota.setUser(u);
                List <TipoAnimal> t = tipoAnimalService.findAll();
                model.addAttribute("tipos", t);
                mascotaService.save(mascota);
            } catch (IOException e) {
                e.printStackTrace();
                System.out.println("ocurrio un error al cargar la imagen." + e);
            }
        }
        return "redirect:/publicacion/{id}/edit"; 
        }
    }

