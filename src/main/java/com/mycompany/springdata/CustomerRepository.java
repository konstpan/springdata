package com.mycompany.springdata;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author panos
 */
public interface CustomerRepository extends CrudRepository<Customer, Long> {
    
    List<Customer> findByLastNameContaining(String lastName);
}
