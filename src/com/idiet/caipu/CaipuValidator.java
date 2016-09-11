package com.idiet.caipu;

import com.idiet.dao.Caipu;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * BlogValidator.
 */
public class CaipuValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("caipu.title", "titleMsg", "请输入标题!");//过滤不通过执行到handleError
		//validateRequiredString("blog.content", "contentMsg", "请输入Blog内容!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(Caipu.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/caipu/save")) //提交参数不合法跳转add。jsp 
			controller.render("add.jsp");
		else if (actionKey.equals("/caipu/update"))
			controller.render("edit.jsp");
	}
}
