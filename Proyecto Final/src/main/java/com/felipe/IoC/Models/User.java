package com.felipe.IoC.Models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "users")
public class User extends Base{

    @NotBlank
    @Size(min = 2)
    private String nombre;


    @NotBlank
    @Size(min = 4)
    private String apellido;

    @NotNull
    @PastOrPresent
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaNacimiento;

    @Column(unique = true)
    @Email(message = "error de formato")
    private String email;

    @NotNull
    private Integer celular;

    @NotBlank
    @Size(min = 7)
    private String password;

    @Transient
    private String passwordConfirm;


    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Publicacion> publicaciones;

    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Mascota> mascotas;


}
