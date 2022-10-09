package at.htl.repository;


import at.htl.Models.Projects;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class ProjectRepository implements PanacheRepository<Projects> {
}
