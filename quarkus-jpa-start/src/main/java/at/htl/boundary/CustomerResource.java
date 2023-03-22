package at.htl.boundary;

import at.htl.Models.Customer;
import at.htl.Models.Locations;
import at.htl.repository.CustomerRepository;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.ext.Provider;
import java.net.URI;
import java.util.List;

@Path("/api/customer")
public class CustomerResource {
    @Inject
    CustomerRepository customerRepository;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{id}")
    public Customer getCustomer(@PathParam("id") long id){
        return this.customerRepository.findById(id);
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response createCustomer (Customer customer, @Context UriInfo uriInfo){
        this.customerRepository.persist(customer);
        URI uri = uriInfo.getAbsolutePathBuilder().path(Long.toString(customer.getId())).build();
        return Response.created(uri).build();
    }
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    public List<Customer> getCustomers(){
        return this.customerRepository.getCustomers();
    }
}
