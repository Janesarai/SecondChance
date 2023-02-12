package com.felipe.IoC.Models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "vacunas")
public class Vacuna extends Base{

    private String nombe_vacunas;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "vacunas_animales",
            joinColumns = @JoinColumn(name = "vacunas_id"),
            inverseJoinColumns = @JoinColumn(name = "animal_id")
    )
    private List<Mascota> animales;

}