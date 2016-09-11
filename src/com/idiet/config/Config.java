package com.idiet.config;

import com.idiet.caipu.CaipuController;
import com.idiet.canting.CantingController;
import com.idiet.dao.Caipu;
import com.idiet.dao.Canting;
import com.idiet.dao.User;
import com.idiet.index.IndexController;
import com.idiet.login.LoginController;
import com.idiet.member.MemberController;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class Config extends JFinalConfig {
	public void configConstant(Constants me) {
		PropKit.use("a_little_config.txt");
		me.setDevMode(PropKit.getBoolean("devMode", false));
		me.setViewType(ViewType.JSP);
	}

	public void configRoute(Routes me) {
		// me.add("/hello", HelloController.class);
		me.add("/", IndexController.class, "/index");
		me.add("/caipu", CaipuController.class, "/caipu");// 只需定位到控制器 方法自动处理
		// me.add("/caipu/add", CaipuController.class, "/caipu");
		me.add("/login", LoginController.class, "/login");
		// me.add("/food", FoodController.class, "/food");
		me.add("/member", MemberController.class, "/member");
		me.add("/canting", CantingController.class, "/canting");
	}

	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"),
				PropKit.get("user"), PropKit.get("password").trim());
		me.add(c3p0Plugin);

		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		// arp.addMapping("caipu", Caipu.class); // 映射caipu 表到 Blog模型
		arp.addMapping("ih_caipu", Caipu.class); // 映射ih_caipu 表到 Blog模型
		arp.addMapping("ih_ucenter_member", User.class); // 映射ih_caipu 表到 Blog模型
		// arp.addMapping("ih_dishes", Food.class);
		arp.addMapping("ih_canting", Canting.class);
	}

	public void configInterceptor(Interceptors me) {
	}

	public void configHandler(Handlers me) {
	}
}