package at.htl.boundary;

import at.htl.Models.Projects;
import at.htl.repository.ProjectRepository;

import javax.inject.Inject;
import javax.print.attribute.standard.Media;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/api/projects")
public class ProjectsResource {
    @Inject
    ProjectRepository pr;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    public List<Projects> getProjects(){
        return pr.getProjects();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public Projects getProjectByID(@PathParam("id") int id){
        return pr.getProjectByID(id);
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/user/{id}")
    public List<Projects> getProjectsFromUser(@PathParam("id") int id){
        return pr.getUserProjects(id);
    }

}
