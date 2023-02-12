package com.alumnoscd.IoC.Services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.alumnoscd.IoC.Models.Mascota;
import com.alumnoscd.IoC.Models.TipoAnimal;
import com.alumnoscd.IoC.Repositories.MascotaRepository;
import com.alumnoscd.IoC.Repositories.BaseRepository;

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
