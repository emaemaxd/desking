package at.htl.boundary;

import at.htl.Models.Timerecording;
import at.htl.repository.TimerecordingRepository;

import javax.inject.Inject;
import javax.print.attribute.standard.Media;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
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
}
