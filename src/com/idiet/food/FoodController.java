package com.idiet.food;

import com.idiet.dao.Canting;
import com.idiet.dao.Food;
import com.jfinal.core.Controller;

public class FoodController extends Controller {
	public void index() {
		String username = getSessionAttr("username");
		// System.out.println(username);
		if (username == null) {
			redirect("/login");
		} else {
			System.out.println("start_");
			setAttr("data", Canting.me.paginate(getParaToInt(0, 1), 10));
			System.out.println("end_");
			render("index.jsp");
		}
	}

	// 新增
	public void add() {
	}

	public void save() {
		//System.out.println(getPara("Food.title"));// 打印post参数
		getModel(Food.class).save();
		redirect("/food");
	}

	// 删除
	public void delete() {
		Food.me.deleteById(getParaToInt());
		redirect("/food");
	}

	// 修改
	public void edit() {
		setAttr("row", Food.me.findById(getParaToInt()));
	}

	public void update() {
		// System.out.println(getPara("title"));//打印post参数
		getModel(Food.class).update();
		redirect("/food");
	}

}