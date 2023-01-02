package com.suriya.insurance.controller;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suriya.insurance.controller.model.Customer;
import com.suriya.insurance.controller.model.CustomerRepository;
import com.suriya.insurance.controller.model.User;
import com.suriya.insurance.controller.model.UserRepository;

@Controller
public class LoginController {

	@Autowired
	private UserRepository userRepo;
	@Autowired
	private CustomerRepository customerRepository; 
			
	@GetMapping("/")
	public String loginPage() {
		return "login";
	}
	@GetMapping("/home")
	public String homePage(){
		return "welcome";
	}
	@PostMapping("/home")
		public String loginPage(Model model,@RequestParam("email")String email,@RequestParam("password")String password)throws IOException  {
			User u = null;
			u=userRepo.findByEmail(email);
			
			//			try {
//				u=userRepo.findByEmail("email");
//			}catch(Exception e) {
//				System.out.println("Hi");
//			}
			if(u!=null) {
				model.addAttribute("welcomeuser","Welcome to JS Insurance");
				return"welcome";
			}
			model.addAttribute("kindlyregister","Do not Have an account?please Create One.");
			return "login";
		}
	@GetMapping("/logout")
	public String logoutPage() {
		return "login";
	}
	@GetMapping("/register")
	public String registerPage() {
		return "register";
	}
	@PostMapping("/set-user")
	public String registrationToLogin(@RequestParam("email")String email,@RequestParam("password1")String password1,
			@RequestParam("password2")String password2,Model model)throws IOException {
		if(password1.equals(password2)) {
			User u=new User();
			u.setId(10+(int)(Math.random()*(200-10)));
			u.setEmail(email);
			u.setPassword(password1);
			userRepo.save(u);
			model.addAttribute("Successful", "Registration done Successful.");
			return "login";
		}
		else {
			model.addAttribute("registrationerror", "Password Does Not Match!");
		}
		return "register";
		
	}
	@GetMapping("/createpolicy")
	public String personalInformationPage() {
		return "profile";
	}
	@PostMapping("/save-newprofile")
	public String personalTovehicle(@RequestParam("address")String address,@RequestParam("contact")String contact,@RequestParam("customerName")String customerName,@RequestParam("dateOfBirth")String dateOfBirth,@RequestParam("email")String email,
			@RequestParam("gender")String gender,@RequestParam("pincode")String pincode,@RequestParam("vehicleManufacturer")String vehicleManufacturer,
			@RequestParam("vehicleModel")String vehicleModel,@RequestParam("vehiclePrice")String vehiclePrice,@RequestParam("vehicleVIN")String vehicleVIN,@RequestParam("VehicleYearOfManufacture")String VehicleYearOfManufacture,
			@RequestParam("startingDate")String startingDate,@RequestParam("vehiclecc")String vehiclecc,Model model)throws IOException{
			Customer customer=new Customer();
			customer.setPolicyid(75000);
			customer.setCustomerName(customerName);
			customer.setAddress(address);
			customer.setContact(contact);
			customer.setDateOfBirth(dateOfBirth);
			customer.setEmail(email);
			customer.setGender(gender);
			customer.setPinCode(pincode);
			customer.setVehicleManufacturer(vehicleModel);
			customer.setVehicleModel(vehicleModel);
			customer.setVehiclePrice(vehiclePrice);
			customer.setVehicleVIN(vehicleVIN);
			customer.setVehicleYearOfManufacture(VehicleYearOfManufacture);
			customer.setVehiclecc(vehiclecc);
			customer.setCoverageStartingDate(startingDate);
			customer.setDepreciation(VehicleYearOfManufacture);
			customer.setSuminsured(vehiclePrice,customer.getDepreciation());
			customer.setOwnpremium(customer.getSuminsured());
			customer.setDiscount();
			customer.setTotalownpremium(customer.getOwnpremium(),customer.getDiscount());
			customer.setThirdparty(customer.getOwnpremium());
			customer.setPacover();
			customer.setNetpremium(customer.getTotalownpremium(),customer.getPacover(),customer.getThirdparty());
			customer.setServicetax(customer.getNetpremium());
			customer.setTotalpremium(customer.getNetpremium(),customer.getServicetax());
			customer.setFinalpremium(customer.getTotalpremium());
			customerRepository.save(customer);
			model.addAttribute("AddednewCustomer","Your Policy was Created and Your Policy Id is"+customer.getPolicyid());
			return "profile";
			}

	@PostMapping("/showpolicy")
	public String showingPolicy(Model m,@RequestParam("customerName")String customerName) {
		Customer cus=null;
		cus=customerRepository.findByCustomerName(customerName);
		m.addAttribute("result",cus);
		return "customer";
	}
	
	@GetMapping("/enterpolicyid")
	public String getpolicy(Model mv) {
		return "entry";
	}

}
	
	
	
	
	

	