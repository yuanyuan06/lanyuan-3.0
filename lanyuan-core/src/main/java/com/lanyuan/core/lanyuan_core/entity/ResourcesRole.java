package com.lanyuan.core.lanyuan_core.entity;

import java.io.Serializable;
@SuppressWarnings("serial")
public class ResourcesRole implements Serializable{
	private String resId;
	private String roleId;
	public String getResId() {
		return resId;
	}
	public void setResId(String resId) {
		this.resId = resId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
}
