package at.htl.repository;

import at.htl.Models.Locations;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class LocationRepository implements PanacheRepository<Locations> {
    public List<Locations> getLocations(){
        return getEntityManager().createQuery("select l from Locations l").getResultList();
    }
    public Locations getLocationByID(long id1){
        var query = getEntityManager().createQuery("select l from Locations l where Locations.id= :id");
        query.setParameter('1',id1);
        return (Locations) query.getSingleResult();
    }

}
