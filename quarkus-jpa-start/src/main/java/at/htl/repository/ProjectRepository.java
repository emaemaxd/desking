package at.htl.repository;


import at.htl.Models.Projects;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class ProjectRepository implements PanacheRepository<Projects> {
    public List<Projects> getProjects(){
        var query = getEntityManager().createQuery("select DISTINCT new at.htl.records.allProj(p.id, p.name,p.description, p.customer.id, p.customer.firstname, p.customer.lastname, p.customer.email, p.customer.tel) from Projects p");
        return query.getResultList();
    }

    /**
     * <h1>Get Project by ID</h1>
     * @param id ProjectID to query for
     * @return Project
     */
    public Projects getProjectByID(int id) {
        var query = getEntityManager().createQuery("select p from Projects p where p.id = :id");
        return (Projects) query.setParameter("id",id).getSingleResult();
    }

    /**
     * <h1>Get Projects where UserID is working</h1>
     * @param id User to query for
     * @return List of Projects
     */
    public List getUserProjects(int id){
        var query = getEntityManager().createQuery("select DISTINCT new at.htl.records.userProjFinal(p.id,p.name,p.description,p.customer.id,p.customer.lastname,p.customer.email,up.user.lastname,up.user.Role) from Projects p join UserProjects up on up.user.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }
}
