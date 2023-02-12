package com.felipe.IoC.Services;

import org.springframework.stereotype.Service;

import com.felipe.IoC.Models.Imagen;
import com.felipe.IoC.Repositories.BaseRepository;
import com.felipe.IoC.Repositories.ImagenRepository;

@Service
public class ImagenService extends BaseService<Imagen>{
    
    private final ImagenRepository imagenRespo;

    public ImagenService(BaseRepository<Imagen> baseRepository,ImagenRepository imagenRespo){
        
        super(baseRepository);
        this.imagenRespo = imagenRespo;
    }
}
