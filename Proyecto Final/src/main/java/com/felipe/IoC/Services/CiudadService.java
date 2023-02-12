package com.felipe.IoC.Services;

import com.felipe.IoC.Models.Ciudad;
import com.felipe.IoC.Repositories.BaseRepository;
import com.felipe.IoC.Repositories.CiudadRepository;
import org.springframework.stereotype.Service;

@Service
public class CiudadService extends BaseService<Ciudad>{
    private final CiudadRepository ciudadRepository;

    public CiudadService(BaseRepository<Ciudad> baseRepository, CiudadRepository ciudadRepository) {
        super(baseRepository);
        this.ciudadRepository = ciudadRepository;
    }
}

