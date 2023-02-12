package com.felipe.IoC.Models;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "publicacion")
public class Publicacion extends Base{

    @NotBlank
    @Size(message = "tu publicacion necesita un titulo")
    private String titulo;

    @NotBlank
    @Size(message = "falta agregar una descripcion")
    private String descripcion;

    private String urlCuestionario;

    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="mascota_id")
    private Mascota mascota;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="ciudad_id")
    private Ciudad ciudad;


}
