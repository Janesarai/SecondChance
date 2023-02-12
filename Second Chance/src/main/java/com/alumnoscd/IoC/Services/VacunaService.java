package com.alumnoscd.IoC.Services;

import com.alumnoscd.IoC.Models.Vacuna;
import com.alumnoscd.IoC.Repositories.BaseRepository;
import com.alumnoscd.IoC.Repositories.VacunaRepository;
import org.springframework.stereotype.Service;

@Service
public class VacunaService extends BaseService<Vacuna> {
    private final VacunaRepository vacunaRepository;

    public VacunaService(BaseRepository<Vacuna> baseRepository, VacunaRepository vacunaRepository) {
        super(baseRepository);
        this.vacunaRepository = vacunaRepository;
    }
}
