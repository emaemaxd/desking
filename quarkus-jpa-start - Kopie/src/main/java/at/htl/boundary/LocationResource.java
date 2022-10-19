package at.htl.boundary;

import at.htl.Models.Locations;
import at.htl.Models.Projects;
import at.htl.repository.LocationRepository;

import javax.inject.Inject;
import javax.print.attribute.standard.Media;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/api/locations")
public class LocationResource {
    @Inject
    LocationRepository lr;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    public List<Locations> getLocations(){
        return lr.getLocations();
    }
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public Locations getLocationByID(@PathParam("id") long id){
        return lr.getLocationByID(id);
    }
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/projects/{id}")
    public List<Projects> getProjectsByLocation(@PathParam("id") long id){
        return lr.getProjectsbyLocaton(id);
    }
}
