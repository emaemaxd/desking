package at.htl.repository;

import at.htl.Models.Timerecording;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.sql.Time;
import java.util.List;

@ApplicationScoped
public class TimerecordingRepository implements PanacheRepository<Timerecording> {
    public List<Timerecording> getAllEntries(){
        var query = getEntityManager().createQuery("select t.starttime,t.timepassed,u.lastname as lastname,p.name as firstname from Timerecording t " +
                "join User u on u.id = t.user.id " +
                "join ProjectEntries pe on pe.id.entry.timerecID = t.timerecID " +
                "join Projects p on p.id = pe.id.project.id");
        return query.getResultList();
    }
    public List<Timerecording> getUserEntries(int userid){
        var query = getEntityManager().createQuery("select t,t.projectid.id from Timerecording t where t.user.id = :id");
        query.setParameter("id",userid);
        return query.getResultList();
    }

    public List getEntriesForProject(int id){
        var query = getEntityManager().createQuery("select pe.id.entry,pe.id.entry.user from ProjectEntries pe join Projects p on p.id = pe.id.project.id where pe.id.project.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }

}
