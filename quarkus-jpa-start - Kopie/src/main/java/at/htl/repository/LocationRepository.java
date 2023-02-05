package at.htl.repository;

import at.htl.Models.Locations;
import at.htl.Models.Projects;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class LocationRepository implements PanacheRepository<Locations> {
    /**
     * <h1>Get all Locations</h1>
     * @return List of Locations
     */
    public List<Locations> getLocations(){
        return getEntityManager().createQuery("select l from Locations l").getResultList();
    }

    /**
     * <h1>Get Location by ID</h1>
     * @param id1 Location to query for
     * @return Project
     */
    public Locations getLocationByID(long id1){
        var query = getEntityManager().createQuery("select l from Locations l where Locations.id= :id");
        query.setParameter('1',id1);
        return (Locations) query.getSingleResult();
    }

    /**
     * <h1>Get Projects from Locaton</h1>
     * @param id Location to query for
     * @return List of Projects
     */
    public List getProjectsbyLocaton(long id){
        var query = getEntityManager().createQuery("select l.id.project.id,l.id.project.name " +
                "from ProjectLocations l " +
                "where l.id.location.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }

}
