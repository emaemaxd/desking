package at.htl.boundary;

import at.htl.Models.User;
import at.htl.repository.UserRepository;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
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
}
