package at.htl.Models;

import javax.persistence.*;
import java.sql.Time;

@IdClass(UserProjID.class)
public class UserProjects {

    @Id
    private Projects project;
    @Id
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
