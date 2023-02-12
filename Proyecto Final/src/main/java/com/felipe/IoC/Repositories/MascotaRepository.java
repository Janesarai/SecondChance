package com.felipe.IoC.Repositories;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.felipe.IoC.Models.Ciudad;
import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.TipoAnimal;




@Repository
public interface MascotaRepository extends BaseRepository<Mascota>{

    List<Mascota> findAllByTipoDeAnimal(TipoAnimal tipoAnimal);

}
