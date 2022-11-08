package at.htl.repository;

import at.htl.Models.Customer;

import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.EntityManager;
import java.util.List;

@ApplicationScoped
public class CustomerRepository implements PanacheRepository<Customer> {

    public void setEm(EntityManager em) {
        this.em = em;
    }

    EntityManager em;

    public void update(Customer customer) {
        getEntityManager().merge(customer);
    }
    public Customer getCustomer (int id) {
        var query = getEntityManager().createQuery("select c from Customer c where Customer.id= :id");
        query.setParameter("id",id);
        return (Customer) query.getSingleResult();
    }
    public List<Customer> getCustomers(){
        var query = getEntityManager().createQuery("select c from Customer c");
        return query.getResultList();
    }

    }

