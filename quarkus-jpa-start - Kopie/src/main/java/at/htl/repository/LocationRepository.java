package at.htl.repository;

import at.htl.Models.Locations;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class LocationRepository implements PanacheRepository<Locations> {

}
