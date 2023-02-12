package com.felipe.IoC.Models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "mascotas")
public class Mascota extends Base{

    @NotBlank
    @Size(min = 2 )
    private String nombre;

    @NotBlank
    private String tamano;

    private String edad;

    private String sexo;

    private String personalidad;

    private int energia;

    private String ubicacion;


    @OneToOne(mappedBy="mascota", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private Publicacion publicacion;

    @OneToMany(mappedBy="mascota", fetch = FetchType.LAZY)
    private List<Imagen> imagenes;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="tipodeanimal_id")
    private TipoAnimal tipoDeAnimal;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "vacunas_animales",
            joinColumns = @JoinColumn(name = "animal_id"),
            inverseJoinColumns = @JoinColumn(name = "vacunas_id")
    )

    private List<Vacuna> vacunas;

    public boolean isPresent() {
        return false;
    }

    }

