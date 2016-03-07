package com.lanyuan.core.lanyuan_core.service;

import com.lanyuan.core.lanyuan_core.base.BaseService;
import com.lanyuan.core.lanyuan_core.entity.DicType;



public interface DicTypeService extends BaseService<DicType>{
	public DicType isExist(DicType dicType);
	public DicType queryById(DicType dicType);
}
