package com.idiet.member;


import com.idiet.dao.Canting;
import com.idiet.dao.User;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

public class MemberController extends Controller {
	public void index() {
		String username=getSessionAttr("username");
		//System.out.println(username);
		if(username==null){
			redirect("/login");
		}else{
			System.out.println("start_");
			setAttr("data", User.me.paginate(getParaToInt(0, 1), 10)); 
			System.out.println("end_");
			render("index.jsp"); 
		}
	}
	//新增
	public void add() {
	}
	
	public void save(){
		//System.out.println(getPara("User.title"));//打印post参数
		getModel(User.class).save();
		
		redirect("/member");
	}
	//删除
	public void delete(){
		User.me.deleteById(getParaToInt());
		redirect("/member");
	}
	//修改
	public void edit(){
		setAttr("row",User.me.findById(getParaToInt()));
	}
	
	public void update(){
		//System.out.println(getPara("title"));//打印post参数
		getModel(User.class).update();
		redirect("/member");
	}
	
}