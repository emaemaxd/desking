package at.htl.repository;

import at.htl.Models.Timerecording;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class TimerecordingRepository implements PanacheRepository<Timerecording> {
    public List<Timerecording> getAllEntries(){
        var query = getEntityManager().createQuery("select t.timepassed,u.lastname from Timerecording t join User u on u.id = t.user.id");
        return query.getResultList();
    }
    public List<Timerecording> getUserEntries(int userid){
        var query = getEntityManager().createQuery("select t from Timerecording t where t.user.id = :id");
        query.setParameter("id",userid);
        return query.getResultList();
    }
}
