package com.xw.service;

import com.xw.controller.xinwen;

import java.util.List;
import java.util.Map;

public interface IXinwenService {
    public int adminLog(Map map);
    public int zhuce(Map map);
    public int addxw(Map map);
    public List<xinwen> All();
    public int Delxw(Map map);
}
