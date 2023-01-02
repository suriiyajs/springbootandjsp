package com.suriya.insurance.controller.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;


public interface UserRepository extends JpaRepository<User,Integer> {

	User findByEmail(String string);


}