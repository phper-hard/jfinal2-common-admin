package com.idiet.dao;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class Canting extends Model<Canting> {
	public static final Canting me = new Canting();
	
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<Canting> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from ih_canting order by id desc");
	}
}
