package com.alumnoscd.IoC.Services;

import com.alumnoscd.IoC.Models.Ciudad;
import com.alumnoscd.IoC.Repositories.BaseRepository;
import com.alumnoscd.IoC.Repositories.CiudadRepository;

import java.util.Optional;

import org.springframework.stereotype.Service;

@Service
public class CiudadService extends BaseService<Ciudad>{
    private final CiudadRepository ciudadRepository;

    public CiudadService(BaseRepository<Ciudad> baseRepository, CiudadRepository ciudadRepository) {
        super(baseRepository);
        this.ciudadRepository = ciudadRepository;
    }
    // public Ciudad findCiudadByNombre(String nombre) {
    //     Optional<Ciudad> c = ciudadRepository.findByCiudad(nombre);
    //     if(c.isPresent()) {
    //         return c.get();
    //     } else {
    //         return null;
    //     }
    // }
}

