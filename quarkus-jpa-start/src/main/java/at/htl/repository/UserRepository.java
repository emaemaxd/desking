package at.htl.repository;


import at.htl.Models.User;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.core.Response;
import java.util.List;

@ApplicationScoped
public class UserRepository implements PanacheRepository<User> {

    /**
     * <h1>Get all Users</h1>
     * @return List of Users
     */
    public List<User> getUsers(){
        var query = getEntityManager().createQuery("select u from User u");
        return query.getResultList();
    }
    /**
     * <h1>Get User by ID</h1>
     * @param id User to query for
     * @return User
     */
    public User getUserByID(int id){
        var query = getEntityManager().createQuery("select u from User u where u.id = :id");
        query.setParameter("id", id);
        return (User) query.getSingleResult();
    }


    /**
     * <h1>Update user</h1>
     * @param user User to update (Model in Models package)
     * @return Project
     */
    public Response updateUser(User user){

        getEntityManager().merge(user);
        return Response.ok(user).build();
    }
}

