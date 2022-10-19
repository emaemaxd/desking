package at.htl.Models;


import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class timerecID implements Serializable {
    @ManyToOne
    private Timerecording entry;
    @ManyToOne
    private Projects project;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof timerecID)) return false;
        timerecID timerecID = (timerecID) o;
        return Objects.equals(getEntry(), timerecID.getEntry()) && Objects.equals(getProject(), timerecID.getProject());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getEntry(), getProject());
    }

    public Timerecording getEntry() {
        return entry;
    }

    public void setEntry(Timerecording entry) {
        this.entry = entry;
    }

    public Projects getProject() {
        return project;
    }

    public void setProject(Projects project) {
        this.project = project;
    }
}
