package mum.edu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mum.edu.domain.Calculator;
import mum.edu.framework.annotation.AutoWired;
import mum.edu.framework.annotation.Controller;
import mum.edu.framework.annotation.RequestMapping;
import mum.edu.validator.CalculatorValidator;

@Controller
public class CalculatorController {

	@AutoWired
	CalculatorValidator calculatorValidator;
	
	@RequestMapping(value={"/"})
 	public String inputCalculator(HttpServletRequest request, 
			HttpServletResponse response) {
		return "/WEB-INF/jsp/index.jsp";
	}
	
	@RequestMapping(value="/calc2")
	public String calculate(Calculator calculator, HttpServletRequest request, 
			HttpServletResponse response){
		List<String> errors=calculatorValidator.validate(calculator);
		if(errors.isEmpty()){			
			calculator.setSum(calculator.getAdd1()+calculator.getAdd2());
			calculator.setProduct(calculator.getMult1()*calculator.getMult2());
			request.setAttribute("calculator", calculator);
			return "/WEB-INF/jsp/result.jsp";
		}else{
			request.setAttribute("errors", errors);
			request.setAttribute("calculator", calculator);
			return "/WEB-INF/jsp/calculator.jsp";
		}
	}
}
