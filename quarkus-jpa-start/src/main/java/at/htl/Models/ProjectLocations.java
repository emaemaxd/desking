package at.htl.Models;

import javax.persistence.*;

@Entity
public class ProjectLocations {
    @EmbeddedId
    ProjectLocationID id;

    public ProjectLocationID getId() {
        return id;
    }

    public void setId(ProjectLocationID id) {
        this.id = id;
    }
}
