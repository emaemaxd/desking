package at.htl.Models;

import javax.persistence.*;

@Entity
public class Projects {
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;
    @Column(unique = true)
    private String name;
    @ManyToOne
    private Customer customer;
    public String getName() {
        return name;
    }

    public Customer getCustomerid() {
        return customer;
    }

    public void setCustomerid(Customer customerid) {
        this.customer = customerid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String courttype) {
        description = courttype;
    }

    private String description;

}
