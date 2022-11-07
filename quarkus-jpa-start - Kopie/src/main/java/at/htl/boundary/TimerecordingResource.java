package at.htl.boundary;

import at.htl.Models.Timerecording;
import at.htl.repository.TimerecordingRepository;

import javax.inject.Inject;
import javax.print.attribute.standard.Media;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.Time;
import java.util.List;

@Path("/api/entries")
public class TimerecordingResource {
    @Inject
    TimerecordingRepository trr;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public List<Timerecording> getUserEntries(@PathParam("id") int userid){
        return trr.getUserEntries(userid);
    }
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    public List<Timerecording> getAllEntries(){
        return trr.getAllEntries();
    }
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/project/{id}")
    public List<Timerecording> getProjectEntries(@PathParam("id") int id){
        return trr.getEntriesForProject(id);
    }

    /**
     * add an entry to the records
     *
     * @param timerecording the time to record
     * @return
     */
    @POST
    @Transactional
    public Response addEntry(Timerecording timerecording){
        trr.persist(timerecording);
        return Response.ok(timerecording).build();
    }

}
