package com.idiet.login;

import com.idiet.dao.User;
import com.idiet.util.MD5Util;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

/**
 * IndexController
 */
public class LoginController extends Controller {
	// private String username=null;
	// private String password=null;

	public void index() {
		render("index.jsp");
	}

	public void login_on() {
		String username = getPara("username");

		String password = MD5Util.toMd5String(getPara("password"));
		// User userInDb =
		// User.me.findFirst("select id, user_name, user_type, name_chn from user where user_name=? and password=?",
		// user_name, MD5.getMD5(password));
		// 查询?表示占位符号 不需加引号
		User userInDb = User.me
				.findFirst(
						"select * from ih_ucenter_member where username=? and password=?",
						username, password);
		if (userInDb != null) {
			// 保存session
			getSession().setAttribute("username", username);
			redirect("/caipu");
		} else {
			render("index.jsp");
		}

		/*
		 * String name=getPara("member.name"); String
		 * password=getPara("member.password"); String
		 * sql="select * from ih_ucenter_member where username='"
		 * +name+"' and password='"+password+"'"; List<Member>
		 * memuser=Member.me.find(sql);
		 * 
		 * 
		 * username=getPara("username"); setSessionAttr("username", username);
		 * String username2=getSessionAttr("username");
		 * System.out.println(username2);
		 * 
		 * String sql =
		 * "select * from ih_ucenter_member where username='?' and passowrd='?'"
		 * ; System.out.println(sql); Member mem = Member.me.findFirst(sql,
		 * 123); String name1 = mem.getStr("username");
		 */
	}

	public void logout() {
		getSession().removeAttribute("username");// 移除session
		redirect("/login");
	}

	public void register() {
		// setAttr("error_msg", "注册信息有误");
		render("register.jsp");
	}

	public void register_on() {
		// System.out.println(getPara("caipu.title"));//打印post参数
		String email = getPara("user.email");
		String username = getPara("user.username");
		String password = MD5Util.toMd5String(getPara("user.password"));
		User has = (User) User.me.findFirst(
				"select id from ih_ucenter_member where username=?", username);
		
		if (has != null) {
			System.out.println(has);
			redirect("/register");
		} else {

			Record user = new Record().set("email", email)
					.set("username", username).set("password", password);
			Db.save("ih_ucenter_member", user);
			Long insertId = user.get("id");
			redirect("/login");
			// System.out.println(insertId);

			/*
			 * Boolean rs=getModel(User.class).save(); if(rs){
			 * redirect("/login"); }else{ setAttr("error_msg", "注册信息有误");
			 * redirect("/register"); } //redirect("/login");
			 */
		}
	}
}
