package at.htl.repository;

import at.htl.Models.Timerecording;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class TimerecordingRepository implements PanacheRepository<Timerecording> {
}
