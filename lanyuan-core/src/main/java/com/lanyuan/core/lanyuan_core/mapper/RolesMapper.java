package com.lanyuan.core.lanyuan_core.mapper;

import com.lanyuan.core.lanyuan_core.base.BaseMapper;
import com.lanyuan.core.lanyuan_core.entity.RoleAccount;
import com.lanyuan.core.lanyuan_core.entity.Roles;

public interface RolesMapper extends BaseMapper<Roles>{
	public Roles isExist(String name);
	
	public Roles findbyAccountRole(String accountId);
	
	public void addAccRole(RoleAccount roleAccount);
	
	public void deleteAccountRole(String accountId);
}
