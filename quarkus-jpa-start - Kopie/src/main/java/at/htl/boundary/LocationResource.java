package at.htl.boundary;

import at.htl.Models.Locations;
import at.htl.Models.Projects;
import at.htl.repository.LocationRepository;

import javax.inject.Inject;
import javax.print.attribute.standard.Media;
import javax.transaction.Transactional;
import javax.ws.rs.*;
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

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    @Path("/add")
    public Response addLocation(Locations location) {
        // Koordinaten Fetch

        lr.getEntityManager().persist(location);
        return Response.ok().build();
    }
}
