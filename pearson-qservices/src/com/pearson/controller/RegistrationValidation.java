package com.pearson.controller;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.pearson.model.Register;

public class RegistrationValidation implements Validator  {
	@Override
	public boolean supports(Class aClass) {
		return Register.class.equals(aClass);
	}

	/*@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}*/

	@Override
	public void validate(Object obj, Errors errors) {
		Register register = (Register) obj;
		 
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "model", "field.required", "Required field");
 
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "field.required", "Required field");
		if ( ! errors.hasFieldErrors("price")) {
			if (register.getEmail().isEmpty())
				errors.rejectValue("email", "not_zero", "Can't be free!");
		}		
	}
		
	}


