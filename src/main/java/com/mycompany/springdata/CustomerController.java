package com.mycompany.springdata;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author panos
 */
@Controller
public class CustomerController {
    @Autowired
    CustomerRepository repository;
    
    @RequestMapping("/create.htm")
    public String create(@ModelAttribute Customer customer) {
        repository.save(customer);
        
        return "redirect:/list.htm";
    }
    
    @RequestMapping("/delete.htm")
    public String delete(@RequestParam Long id) {
        repository.delete(id);
        
        return "redirect:/list.htm";
    }
    
    @RequestMapping("/list.htm")
    public String list(Model model) {
        model.addAttribute("customers", repository.findAll());
        
        return "list";
    }
    
    @RequestMapping("/find.htm")
    public String findByLastName(Model model, @RequestParam(value = "lastName") String lastName) {
        model.addAttribute("customers", repository.findByLastNameContaining(lastName));
        
        return "list";
    }
    
    @RequestMapping(value = "/update.htm", method = RequestMethod.GET)
    public String findById(Model model, @RequestParam Long id) {
        model.addAttribute("customer", repository.findOne(id));
        return "update";
    }
    
    @RequestMapping(value = "/update.htm", method = RequestMethod.POST)
    public String update(Model model, @ModelAttribute Customer customer) {
        repository.save(customer);
        return "redirect:/list.htm";
    }
}