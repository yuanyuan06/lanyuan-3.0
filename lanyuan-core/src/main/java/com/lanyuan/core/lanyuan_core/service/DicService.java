package com.lanyuan.core.lanyuan_core.service;

import com.lanyuan.core.lanyuan_core.base.BaseService;
import com.lanyuan.core.lanyuan_core.entity.Dic;



public interface DicService extends BaseService<Dic>{
	public Dic isExist(Dic dic);
}
