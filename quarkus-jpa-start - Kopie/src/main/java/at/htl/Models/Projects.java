package at.htl.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String courttype) {
        description = courttype;
    }

    private String description;

}
