package com.felipe.IoC.Services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.TipoAnimal;
import com.felipe.IoC.Repositories.MascotaRepository;
import com.felipe.IoC.Repositories.BaseRepository;

import java.util.List;

@Service
public class MascotaService extends BaseService<Mascota>{

    private final MascotaRepository mascotaRepository;


    public MascotaService(BaseRepository<Mascota> baseRepository, MascotaRepository mascotaRepository) {
        super(baseRepository);
        this.mascotaRepository = mascotaRepository;
    }
    
    public List<Mascota> findAllByTipoAnimal(TipoAnimal tipoAnimal){
        return mascotaRepository.findAllByTipoDeAnimal(tipoAnimal);
    }

}
