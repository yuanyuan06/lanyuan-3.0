package com.lanyuan.core.lanyuan_core.mapper;


import com.lanyuan.core.lanyuan_core.base.BaseMapper;
import com.lanyuan.core.lanyuan_core.entity.Dic;

public interface DicMapper extends BaseMapper<Dic>{
	public Dic isExist(Dic dic);
}
