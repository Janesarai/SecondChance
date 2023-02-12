package com.felipe.IoC.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.felipe.IoC.Models.Mascota;


@Repository
public interface MascotaRepositoryFiltro extends CrudRepository<Mascota,Long>{

    @Query(value="SELECT mascotas.* FROM mascotas,publicacion,ciudades,regiones WHERE regiones.id = ciudades.region_id AND ciudades.id= publicacion.ciudad_id AND mascotas.id = publicacion.mascota_id AND regiones.id= ?1", nativeQuery =true )
    List<Mascota> findAllByRegion(Long regionId);

}
