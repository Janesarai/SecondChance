package com.felipe.IoC.Services;

import org.springframework.stereotype.Service;

import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Repositories.MascotaRepository;
import com.felipe.IoC.Repositories.BaseRepository;

@Service
public class MascotaService extends BaseService<Mascota>{

    private final MascotaRepository mascotaRepository;

    public MascotaService(BaseRepository<Mascota> baseRepository, MascotaRepository mascotaRepository) {
        super(baseRepository);
        this.mascotaRepository = mascotaRepository;
    }

}
