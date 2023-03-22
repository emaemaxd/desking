package at.htl.Models;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;
import java.io.Serializable;
import java.util.Objects;
@Embeddable
public class ProjectLocationID implements Serializable {
    @ManyToOne
    private Projects project;
    @ManyToOne
    private Locations location;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ProjectLocationID)) return false;
        ProjectLocationID that = (ProjectLocationID) o;
        return Objects.equals(getProject(), that.getProject()) && Objects.equals(getLocation(), that.getLocation());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getProject(), getLocation());
    }

    public Projects getProject() {
        return project;
    }

    public void setProject(Projects project) {
        this.project = project;
    }

    public Locations getLocation() {
        return location;
    }

    public void setLocation(Locations location) {
        this.location = location;
    }
}
