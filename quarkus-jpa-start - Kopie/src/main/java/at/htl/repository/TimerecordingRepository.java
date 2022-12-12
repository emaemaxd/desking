package at.htl.repository;

import at.htl.Models.Timerecording;
import at.htl.Models.addEntryDTO;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.core.Response;
import java.time.LocalDateTime;
import java.util.List;

@ApplicationScoped
public class TimerecordingRepository implements PanacheRepository<Timerecording> {
    public List<Timerecording> getAllEntries(){
        var query = getEntityManager().createQuery("select new at.htl.Models.entry(t.timerecID, t.starttime,t.timepassed,u.lastname,p.name,t.projectid.id,t.user.id) from Timerecording t " +
                "join User u on u.id = t.user.id " +
                "join ProjectEntries pe on pe.id.entry.timerecID = t.timerecID " +
                "join Projects p on p.id = pe.id.project.id");
        return query.getResultList();
    }
    public List<Timerecording> getUserEntries(int userid){
        var query = getEntityManager().createQuery("select new at.htl.Models.userentry(t.timerecID,t.latitude,t.longitude,t.timepassed,t.starttime,t.projectid.id, t.projectid.name, t.user.id) from Timerecording t where t.user.id = :id");
        query.setParameter("id",userid);
        return query.getResultList();
    }

    public List getEntriesForProject(int id){
        var query = getEntityManager().createQuery("select new at.htl.Models.projectentry(pe.id.entry.timerecID,pe.id.entry.latitude, pe.id.entry.longitude,pe.id.entry.timepassed,pe.id.entry.starttime,pe.id.entry.user.firstname,pe.id.entry.user.lastname,pe.id.entry.user.email,pe.id.entry.user.Role,p.id,pe.id.entry.user.id) from ProjectEntries pe join Projects p on p.id = pe.id.project.id where pe.id.project.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }

    public Response addEntry(addEntryDTO Entry){
        var query = getEntityManager().createNativeQuery("Insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id)" +
                " values (:timerecID, :latitude, :longitude, :starttime, :timepassed, :projectid, :userid)");
        query.setParameter("timerecID", Entry.getEntryID());
        query.setParameter("latitude", Entry.getLatitude());
        query.setParameter("longitude", Entry.getLongitude());
        query.setParameter("starttime", Entry.getStarttime());
        query.setParameter("timepassed", Entry.getTimepassed());
        query.setParameter("projectid", Entry.getProjectID());
        query.setParameter("userid", Entry.getUserID());
        System.out.println(query.executeUpdate());
        var query2 = getEntityManager().createNativeQuery("INSERT INTO projectentries (entry_timerecid, project_id) values (:timerecID, :projectid)");
        query2.setParameter("timerecID", Entry.getEntryID());
        query2.setParameter("projectid", Entry.getProjectID());
        System.out.println(query2.executeUpdate());
        return Response.ok().build();
    }
}
