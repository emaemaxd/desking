package at.htl.boundary;

import at.htl.Models.Customer;
import at.htl.Models.User;
import at.htl.repository.UserRepository;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import java.net.URI;
import java.util.List;

@Path("/api/users")
public class UserResource {
    @Inject
    UserRepository ur;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    public List<User> getUsers(){
       return ur.getUsers();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public User getUser(@PathParam("id") int id){
        return ur.getUserByID(id);
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/create/")
    public Response createUser(User user, @Context UriInfo uriInfo) {
        ur.persist(user);
        URI uri = uriInfo.getAbsolutePathBuilder().path(Long.toString(user.getId())).build();
        return Response.created(uri).build();
    }
}
