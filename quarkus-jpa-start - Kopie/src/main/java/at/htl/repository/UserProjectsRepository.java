package at.htl.repository;


import at.htl.Models.UserProjects;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserProjectsRepository implements PanacheRepository<UserProjects> {
}
