package mum.edu.validator;

import java.util.ArrayList;
import java.util.List;

import mum.edu.domain.Calculator;


public class CalculatorValidatorImpl implements CalculatorValidator {
	public List<String> validate(Object  object ) {
		List<String> errors=new ArrayList<>();
		Calculator product = (Calculator) object;

		if (product.getAdd1() == null) {
			errors.add("Calculator must have add1");
		}
		if (product.getAdd2() == null) {
			errors.add("Calculator must have add2");
		}
		if (product.getMult1() == null) {
			errors.add("Calculator must have Mult1");
		}
		if (product.getMult2() == null) {
			errors.add("Calculator must have Mult2");
		}
		return errors;
	}
}
