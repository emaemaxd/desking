package at.htl.Models;

import javax.persistence.*;
import java.sql.Time;
@Entity
@IdClass(UserProjID.class)
public class UserProjects {

    @Id
    @ManyToOne
    private Projects project;
    @Id
    @ManyToOne
    private User user;

    public Projects getProject() {
        return project;
    }

    public void setProject(Projects project) {
        this.project = project;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
