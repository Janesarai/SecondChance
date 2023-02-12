package com.felipe.IoC.Services;

import java.util.List;

import com.felipe.IoC.Repositories.BaseRepository;
import org.springframework.stereotype.Service;

import com.felipe.IoC.Models.Publicacion;
import com.felipe.IoC.Repositories.PublicacionRepository;

@Service
public class PublicacionService extends BaseService<Publicacion>{
    private final PublicacionRepository publicacionRepository;

    public PublicacionService(BaseRepository<Publicacion> baseRepository, PublicacionRepository publicacionRepository) {
        super(baseRepository);
        this.publicacionRepository = publicacionRepository;
    }
}
