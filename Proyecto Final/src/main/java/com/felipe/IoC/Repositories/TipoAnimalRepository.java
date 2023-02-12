package com.felipe.IoC.Repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.felipe.IoC.Models.TipoAnimal;

import java.util.Optional;

@Repository
public interface TipoAnimalRepository extends BaseRepository<TipoAnimal>{

    Optional <TipoAnimal> findByTipoDeAnimal(String tipoDeAnimal);
}
