package com.alumnoscd.IoC.Repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.alumnoscd.IoC.Models.TipoAnimal;

import java.util.Optional;

@Repository
public interface TipoAnimalRepository extends BaseRepository<TipoAnimal>{

    Optional <TipoAnimal> findByTipoDeAnimal(String tipoDeAnimal);
}
