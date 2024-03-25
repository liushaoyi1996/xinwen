package com.xw.mapper;

import com.xw.controller.xinwen;

import java.util.List;
import java.util.Map;

public interface xinwenMapper {
    public int adminLog(Map map);
    public int zhuce(Map map);
    public int addxw(Map map);
    public List<xinwen> All();
    public int Delxw(Map map);
}
