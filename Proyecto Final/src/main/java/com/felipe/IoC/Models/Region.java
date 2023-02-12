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
@Table(name = "regiones")
public class Region extends Base {

    @NotBlank
    private String nombre;

    @OneToMany(mappedBy="region", fetch = FetchType.LAZY)
    private List<Ciudad> ciudades;

}
