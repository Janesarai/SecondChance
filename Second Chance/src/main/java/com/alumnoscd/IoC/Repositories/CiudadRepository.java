package com.alumnoscd.IoC.Repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.alumnoscd.IoC.Models.Ciudad;

@Repository
public interface CiudadRepository extends BaseRepository<Ciudad>{

    // Optional <Ciudad> findByCiudad(String nombre);
}
