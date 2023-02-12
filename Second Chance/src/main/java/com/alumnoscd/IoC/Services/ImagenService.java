package com.alumnoscd.IoC.Services;

import org.springframework.stereotype.Service;

import com.alumnoscd.IoC.Models.Imagen;
import com.alumnoscd.IoC.Repositories.BaseRepository;
import com.alumnoscd.IoC.Repositories.ImagenRepository;

@Service
public class ImagenService extends BaseService<Imagen>{
    
    private final ImagenRepository imagenRespo;

    public ImagenService(BaseRepository<Imagen> baseRepository,ImagenRepository imagenRespo){
        
        super(baseRepository);
        this.imagenRespo = imagenRespo;
    }
}
