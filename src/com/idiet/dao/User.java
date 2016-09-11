package com.idiet.dao;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")

public class User extends Model<User> {
	public static final User me = new User();
	
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<User> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from ih_ucenter_member order by id desc");
	}
}
