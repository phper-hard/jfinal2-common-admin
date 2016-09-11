package com.idiet.caipu;


import com.idiet.caipu.CaipuInterceptor;
import com.idiet.dao.Caipu;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

@Before(CaipuInterceptor.class)
public class CaipuController extends Controller {
	public void index() {
		String username=getSessionAttr("username");
		//System.out.println(username);
		if(username==null){
			redirect("/login");
		}else{
			System.out.println("start_");
			setAttr("data", Caipu.me.paginate(getParaToInt(0, 1), 10)); 
			System.out.println("end_");
			render("index.jsp"); 
		}
	}
	//新增
	public void add() {
	}
	@Before(CaipuValidator.class) //过来post参数
	public void save(){
		System.out.println(getPara("caipu.title"));//打印post参数
		getModel(Caipu.class).save();
		
		redirect("/caipu");
	}
	//删除
	public void delete(){
		Caipu.me.deleteById(getParaToInt());
		redirect("/caipu");
	}
	//修改
	public void edit(){
		setAttr("row",Caipu.me.findById(getParaToInt()));
	}
	@Before(CaipuValidator.class)
	public void update(){
		//System.out.println(getPara("title"));//打印post参数
		getModel(Caipu.class).update();
		redirect("/caipu");
	}
	
}