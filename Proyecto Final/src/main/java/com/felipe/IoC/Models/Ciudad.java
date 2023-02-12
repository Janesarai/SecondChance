package com.felipe.IoC.Models;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "ciudades")
public class Ciudad extends Base{

    @NotBlank
    private String nombre;

    @OneToMany(mappedBy="ciudad", fetch = FetchType.LAZY)
    private List<Publicacion> publicaciones;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="region_id")
    private Region region;

}
