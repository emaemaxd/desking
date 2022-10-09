package at.htl.Models;

import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

public class UserProjID implements Serializable {


    private Projects project;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserProjID)) return false;
        UserProjID that = (UserProjID) o;
        return Objects.equals(project, that.project) && Objects.equals(user, that.user);
    }

    @Override
    public int hashCode() {
        return Objects.hash(project, user);
    }
}
