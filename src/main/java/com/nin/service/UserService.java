package com.nin.service;

import com.nin.model.Contact;
import com.nin.model.Customer;
import com.nin.model.Role;
import com.nin.model.User;
import com.nin.repository.ContactRepository;
import com.nin.repository.CustomerRepository;
import com.nin.repository.UserRepository;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class UserService {

    private static String ROLE_USER = "ROLE_USER";

    private UserRepository userRepository;
    private CustomerRepository customerRepository;
    private ContactRepository contactRepository;
    private PasswordEncoder passwordEncoder;
    private RoleService roleService;

    @Autowired
    public UserService(UserRepository userRepository, CustomerRepository customerRepository, PasswordEncoder passwordEncoder, RoleService roleService) {
        this.userRepository = userRepository;
        this.customerRepository = customerRepository;
        this.passwordEncoder = passwordEncoder;
        this.roleService = roleService;
    }

    public User createUser(String email, String password) {
        User user = userRepository.findByEmail(email);
        if (user == null) {
            user = new User(email, hashPassword(password), new ArrayList<>(), true);
            addRoleToUser(user, ROLE_USER);
            userRepository.save(user);
            return user;
        }
        return null;
    }
    
    public User updateUser(Long id, String email, String password) {
    	Optional<User> userOptional = userRepository.findById(id);
    	if (userOptional.isPresent()){
    		User user = userOptional.get();
    		if(StringUtils.isNoneBlank(email)) {
    			user.setEmail(email);
    		}
    		if(StringUtils.isNoneBlank(password)) {
    			user.setPassword(hashPassword(password));
    		}
    		userRepository.save(user);
    	}
    	
        return null;
    }
    
    public Customer createOrUpdateCustomer(Customer customer) {
    	return customerRepository.save(customer);
    }
    
    public Contact createOrUpdateCustomer(Contact customer) {
    	return contactRepository.save(customer);
    }

    private void addRoleToUser(User user, String roleStr) {
        Role role = roleService.findByRole(roleStr);
        if (role == null) {
            role = roleService.saveRole(roleStr);
        }
        user.getRoles().add(role);
    }

    private String hashPassword(String password) {
        return passwordEncoder.encode(password);
    }

    public User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentUserName = null;
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            currentUserName = authentication.getName();
        }
        User user = null;
        if (currentUserName != null) {
            user = findByEmail(currentUserName);
        }
        return user;
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    
    public Customer findByCustomerIdAndEmail(long customerId, String email) {
    	return customerRepository.findByCustomerIdAndEmail(customerId, email);
    }
}
