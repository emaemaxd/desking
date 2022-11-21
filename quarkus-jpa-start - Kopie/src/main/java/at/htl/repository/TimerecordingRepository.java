package at.htl.repository;

import at.htl.Models.Timerecording;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.sql.Time;
import java.util.List;

@ApplicationScoped
public class TimerecordingRepository implements PanacheRepository<Timerecording> {
    public List<Timerecording> getAllEntries(){
        var query = getEntityManager().createQuery("select new at.htl.Models.entry(t.starttime,t.timepassed,u.lastname,p.name) from Timerecording t " +
                "join User u on u.id = t.user.id " +
                "join ProjectEntries pe on pe.id.entry.timerecID = t.timerecID " +
                "join Projects p on p.id = pe.id.project.id");
        return query.getResultList();
    }
    public List<Timerecording> getUserEntries(int userid){
        var query = getEntityManager().createQuery("select new at.htl.Models.userentry(t.latitude,t.longitude,t.timepassed,t.starttime,t.projectid.id) from Timerecording t where t.user.id = :id");
        query.setParameter("id",userid);
        return query.getResultList();
    }

    public List getEntriesForProject(int id){
        var query = getEntityManager().createQuery("select new at.htl.Models.projectentry(pe.id.entry.latitude, pe.id.entry.longitude,pe.id.entry.timepassed,pe.id.entry.starttime,pe.id.entry.user.firstname,pe.id.entry.user.lastname,pe.id.entry.user.email,pe.id.entry.user.Role) from ProjectEntries pe join Projects p on p.id = pe.id.project.id where pe.id.project.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }

}
