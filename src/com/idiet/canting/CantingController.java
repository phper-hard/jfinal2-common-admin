package com.idiet.canting;


import com.idiet.dao.Canting;
import com.jfinal.core.Controller;

public class CantingController extends Controller {
	public void index() {
		String username=getSessionAttr("username");
		//System.out.println(username);
		if(username==null){
			redirect("/login");
		}else{
			System.out.println("start_");
			setAttr("data", Canting.me.paginate(getParaToInt(0, 1), 10)); 
			System.out.println("end_");
			render("index.jsp"); 
		}
	}
	//新增
	public void add() {
	}
	
	public void save(){
		//System.out.println(getPara("User.title"));//打印post参数
		getModel(Canting.class).save();
		
		redirect("/canting");
	}
	//删除
	public void delete(){
		Canting.me.deleteById(getParaToInt());
		redirect("/canting");
	}
	//修改
	public void edit(){
		setAttr("row",Canting.me.findById(getParaToInt()));
	}
	
	public void update(){
		//System.out.println(getPara("title"));//打印post参数
		getModel(Canting.class).update();
		redirect("/canting");
	}
	
}