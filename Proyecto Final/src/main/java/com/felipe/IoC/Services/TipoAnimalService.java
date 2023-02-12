package com.felipe.IoC.Services;

import com.felipe.IoC.Models.TipoAnimal;
import com.felipe.IoC.Repositories.BaseRepository;
import com.felipe.IoC.Repositories.TipoAnimalRepository;

import java.util.Optional;

import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class TipoAnimalService extends BaseService<TipoAnimal>{
    private final TipoAnimalRepository tipoAnimalRepository;

    public TipoAnimalService(BaseRepository<TipoAnimal> baseRepository, TipoAnimalRepository tipoAnimalRepository) {
        super(baseRepository);
        this.tipoAnimalRepository = tipoAnimalRepository;
    }
    
    public TipoAnimal findTipoAnimalBytipoDeAnimal(String tipoDeAnimal) {
        Optional<TipoAnimal> t = tipoAnimalRepository.findByTipoDeAnimal(tipoDeAnimal);
        if(t.isPresent()) {
            return t.get();
        } else {
            return null;
        }
    }
}
