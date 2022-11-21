package at.htl.repository;


import at.htl.Models.Projects;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class ProjectRepository implements PanacheRepository<Projects> {
    public List<Projects> getProjects(){
        var query = getEntityManager().createQuery("select new at.htl.Models.allProj(p.id, p.name,p.description, p.customer.id, p.customer.firstname, p.customer.lastname, p.customer.email, p.customer.tel) from Projects p");
        return query.getResultList();
    }
    public Projects getProjectByID(int id) {
        var query = getEntityManager().createQuery("select p from Projects p where p.id = :id");
        return (Projects) query.setParameter("id",id).getSingleResult();
    }
    public List getUserProjects(int id){
        var query = getEntityManager().createQuery("select new at.htl.Models.userProjFinal(p.id,p.name,p.description,p.customer.id,p.customer.lastname,p.customer.email,up.user.lastname,up.user.Role) from Projects p join UserProjects up on up.user.id = :id");
        query.setParameter("id",id);
        return query.getResultList();
    }
}
