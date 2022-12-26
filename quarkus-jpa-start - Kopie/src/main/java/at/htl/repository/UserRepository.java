package at.htl.repository;


import at.htl.Models.User;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.core.Response;
import java.util.List;

@ApplicationScoped
public class UserRepository implements PanacheRepository<User> {
    public List<User> getUsers(){
        var query = getEntityManager().createQuery("select u from User u");
        return query.getResultList();
    }
    public User getUserByID(int id){
        var query = getEntityManager().createQuery("select u from User u where u.id = :id");
        query.setParameter("id", id);
        return (User) query.getSingleResult();
    }

    public Response updateUser(User user){

        getEntityManager().merge(user);
        return Response.ok(user).build();
    }
}

