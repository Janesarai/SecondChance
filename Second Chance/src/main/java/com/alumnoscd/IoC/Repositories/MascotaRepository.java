package com.alumnoscd.IoC.Repositories;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.alumnoscd.IoC.Models.Ciudad;
import com.alumnoscd.IoC.Models.Mascota;
import com.alumnoscd.IoC.Models.TipoAnimal;




@Repository
public interface MascotaRepository extends BaseRepository<Mascota>{

    List<Mascota> findAllByTipoDeAnimal(TipoAnimal tipoAnimal);

}
