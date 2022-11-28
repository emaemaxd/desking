package at.htl.boundary;

import at.htl.Models.Timerecording;
import at.htl.Models.addEntryDTO;
import at.htl.repository.TimerecordingRepository;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/api/entries")
public class TimerecordingResource {
    @Inject
    TimerecordingRepository trr;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public List getUserEntries(@PathParam("id") int userid){
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
    public List getProjectEntries(@PathParam("id") int id){
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
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/addEntry/")
    public Response addEntry(addEntryDTO entryToAdd){
        try {
            trr.addEntry(entryToAdd);
        }catch(Exception e){
            System.out.println(e);
            return Response.status(500).build();
        }
        return Response.ok(entryToAdd).build();
    }

}
