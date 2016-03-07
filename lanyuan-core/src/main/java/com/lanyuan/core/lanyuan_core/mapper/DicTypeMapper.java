package com.lanyuan.core.lanyuan_core.mapper;


import com.lanyuan.core.lanyuan_core.base.BaseMapper;
import com.lanyuan.core.lanyuan_core.entity.DicType;

public interface DicTypeMapper extends BaseMapper<DicType>{
	public DicType isExist(DicType dicType);
	public DicType queryById(DicType dicType);
}
