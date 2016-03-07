package com.lanyuan.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.core.lanyuan_core.entity.Log;
import com.lanyuan.core.lanyuan_core.entity.Resources;
import com.lanyuan.core.lanyuan_core.plugin.PageView;
import com.lanyuan.core.lanyuan_core.service.LogService;
import com.lanyuan.core.lanyuan_core.utils.Common;

/**
 * 
 * @author lanyuan
 * 2013-11-19
 * @Email: mmm333zzz520@163.com
 * @version 1.0v
 */
@Controller
@RequestMapping("/background/log/")
public class LogController extends BaseController{
	@Inject
	private LogService logService;
	
	/**
	 * 查询客户登陆信息
	 * @param model
	 * @param log
	 * @param pageNow
	 * @return
	 */
	@ResponseBody
	@RequestMapping("query")
	public PageView queryUserLogin(Log log,String pageNow,String pagesize){
		pageView = logService.query(getPageView(pageNow,pagesize), log);
		return pageView;
	}
	@RequestMapping("list")
	public String list(Model model, Resources menu, String pageNow) {
		return Common.BACKGROUND_PATH+"/log/list";
	}
}
