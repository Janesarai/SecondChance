package com.felipe.IoC.Repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.felipe.IoC.Models.Ciudad;

@Repository
public interface CiudadRepository extends BaseRepository<Ciudad>{

    // Optional <Ciudad> findByCiudad(String nombre);
}
