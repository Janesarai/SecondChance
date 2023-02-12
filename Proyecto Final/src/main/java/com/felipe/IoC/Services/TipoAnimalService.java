package com.felipe.IoC.Services;

import com.felipe.IoC.Models.TipoAnimal;
import com.felipe.IoC.Repositories.BaseRepository;
import com.felipe.IoC.Repositories.TipoAnimalRepository;
import org.springframework.stereotype.Service;

@Service
public class TipoAnimalService extends BaseService<TipoAnimal>{
    private final TipoAnimalRepository tipoAnimalRepository;

    public TipoAnimalService(BaseRepository<TipoAnimal> baseRepository, TipoAnimalRepository tipoAnimalRepository) {
        super(baseRepository);
        this.tipoAnimalRepository = tipoAnimalRepository;
    }
}
