package com.alumnoscd.IoC.Services;

import com.alumnoscd.IoC.Repositories.BaseRepository;
import com.alumnoscd.IoC.Repositories.RegionRepository;

import org.springframework.stereotype.Service;



import com.alumnoscd.IoC.Models.Region;

import java.util.List;
import java.util.Optional;

@Service
public class RegionService extends BaseService<Region>{
    private final RegionRepository regionRepository;

    public RegionService(BaseRepository<Region> baseRepository, RegionRepository regionRepository) {
        super(baseRepository);
        this.regionRepository = regionRepository;
    }
    // public Region findRegionByNombre(String nombre) {
    //     Optional<Region> r = regionRepository.findByRegion(nombre);
    //     if(r.isPresent()) {
    //         return r.get();
    //     } else {
    //         return null;
    //     }
    // }

}

