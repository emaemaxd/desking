package at.htl.Models;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class ProjectEntries {
    @EmbeddedId
    private timerecID id;
}
