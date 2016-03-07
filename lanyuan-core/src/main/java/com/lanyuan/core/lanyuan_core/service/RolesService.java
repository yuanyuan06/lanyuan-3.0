package com.lanyuan.core.lanyuan_core.service;


import java.util.List;

import com.lanyuan.core.lanyuan_core.base.BaseService;
import com.lanyuan.core.lanyuan_core.entity.RoleAccount;
import com.lanyuan.core.lanyuan_core.entity.Roles;

public interface RolesService extends BaseService<Roles>{
	public Roles isExist(String name);
	public Roles findbyAccountRole(String accountId);
	public void addAccRole(RoleAccount roleAccount);

	public void addAccRole(String accountId, List<String> ids);
}
