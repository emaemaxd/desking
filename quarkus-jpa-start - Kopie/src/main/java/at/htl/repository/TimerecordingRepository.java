package at.htl.repository;

import at.htl.Models.Timerecording;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.sql.Time;
import java.util.List;

@ApplicationScoped
public class TimerecordingRepository implements PanacheRepository<Timerecording> {
    public List<Timerecording> getAllEntries(){
        var query = getEntityManager().createQuery("select t.starttime,t.timepassed,u.lastname,p.name from Timerecording t " +
                "join User u on u.id = t.user.id " +
                "join ProjectEntries pe on pe.id.entry.timerecID = t.timerecID " +
                "join Projects p on p.id = pe.id.project.id");
        return query.getResultList();
    }
    public List<Timerecording> getUserEntries(int userid){
        var query = getEntityManager().createQuery("select t from Timerecording t where t.user.id = :id");
        query.setParameter("id",userid);
        return query.getResultList();
    }
    public List<Timerecording> getEntriesForProject(int id){
        var query = getEntityManager().createQuery("select pe.id.entry from ProjectEntries pe where pe.id.project.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }

}
