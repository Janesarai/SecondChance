package com.felipe.IoC.Models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "tipoanimales")
public class TipoAnimal extends Base{

    private String tipoDeAnimal;

    @OneToMany(mappedBy="tipoDeAnimal", fetch = FetchType.LAZY)
    private List<Mascota> mascotas;

}
