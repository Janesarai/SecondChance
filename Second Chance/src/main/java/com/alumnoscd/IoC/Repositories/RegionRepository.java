package com.alumnoscd.IoC.Repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.alumnoscd.IoC.Models.Region;

@Repository
public interface RegionRepository extends BaseRepository<Region>{

    // Optional <Region> findByRegion(String nombre);
}

