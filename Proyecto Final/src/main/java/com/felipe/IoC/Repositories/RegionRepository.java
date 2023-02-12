package com.felipe.IoC.Repositories;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.felipe.IoC.Models.Region;

@Repository
public interface RegionRepository extends BaseRepository<Region>{

    // Optional <Region> findByRegion(String nombre);
}

