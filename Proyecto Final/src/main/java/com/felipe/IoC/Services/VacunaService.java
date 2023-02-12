package com.felipe.IoC.Services;

import com.felipe.IoC.Models.Vacuna;
import com.felipe.IoC.Repositories.BaseRepository;
import com.felipe.IoC.Repositories.VacunaRepository;
import org.springframework.stereotype.Service;

@Service
public class VacunaService extends BaseService<Vacuna> {
    private final VacunaRepository vacunaRepository;

    public VacunaService(BaseRepository<Vacuna> baseRepository, VacunaRepository vacunaRepository) {
        super(baseRepository);
        this.vacunaRepository = vacunaRepository;
    }
}
