package com.pearson.controller;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.pearson.model.Register;



@Component
public class RegistrationValidation implements Validator {
	private final static String FIRSTNAME = "firstName";

	@Override
	public boolean supports(Class<?> clazz) {
		return Register.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Register register = (Register) target;
		String firstName = register.getFirstName();
		ValidationUtils.rejectIfEmpty(errors, "firstName", "{NotEmpty.register.name}");
		ValidationUtils.rejectIfEmpty(errors, FIRSTNAME,
				"NotEmpty.register.firstName");
		/*if (emplNumber != null && emplNumber < 1)
			errors.rejectValue(EMPLOYEES_NUMBER, "shop.emplNumber.lessThenOne");*/
	}
}

/*
 * public class RegistrationValidation implements Validator {
 * 
 * @Override public boolean supports(Class aClass) { return
 * Register.class.equals(aClass); }
 * 
 * @Override public boolean supports(Class<?> arg0) { // TODO Auto-generated
 * method stub return false; }
 * 
 * @Override public void validate(Object obj, Errors errors) { Register register
 * = (Register) obj;
 * 
 * ValidationUtils.rejectIfEmptyOrWhitespace(errors, "model", "field.required",
 * "Required field");
 * 
 * ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "field.required",
 * "Required field"); if ( ! errors.hasFieldErrors("price")) { if
 * (register.getEmail().isEmpty()) errors.rejectValue("email", "not_zero",
 * "Can't be free!"); } }
 * 
 * }
 */

