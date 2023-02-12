package com.alumnoscd.IoC.Services;

import java.util.List;

import com.alumnoscd.IoC.Repositories.BaseRepository;
import org.springframework.stereotype.Service;

import com.alumnoscd.IoC.Models.Publicacion;
import com.alumnoscd.IoC.Repositories.PublicacionRepository;

@Service
public class PublicacionService extends BaseService<Publicacion>{
    private final PublicacionRepository publicacionRepository;

    public PublicacionService(BaseRepository<Publicacion> baseRepository, PublicacionRepository publicacionRepository) {
        super(baseRepository);
        this.publicacionRepository = publicacionRepository;
    }
}
