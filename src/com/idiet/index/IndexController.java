package com.idiet.index;

import com.idiet.dao.Caipu;
import com.jfinal.core.Controller;

/**
 * IndexController
 */
public class IndexController extends Controller {
	public void index() {
		String username=getSessionAttr("username");
		//System.out.println(username);
		if(username==null){
			redirect("/login");
		}else{
			render("index.jsp"); 
		}
	}
}
