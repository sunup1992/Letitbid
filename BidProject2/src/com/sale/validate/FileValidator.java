package com.sale.validate;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.category.vo.CategoryVO;

@Service("fileValidator")
public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object categoryVO, Errors errors) {
		CategoryVO file = (CategoryVO)categoryVO;
		if(file.getFile().getSize() == 0) {
			System.out.println("errorOK?");
			errors.rejectValue("file", "file", "check your file size!");
		}
	}

}

