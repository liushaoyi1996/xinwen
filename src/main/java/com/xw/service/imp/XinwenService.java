package com.xw.service.imp;

import com.xw.controller.xinwen;
import com.xw.mapper.xinwenMapper;
import com.xw.service.IXinwenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class XinwenService implements IXinwenService {
    @Autowired
    xinwenMapper xinwenMapper;

    @Override
    public int adminLog(Map map) {
        return xinwenMapper.adminLog(map);
    }

    @Override
    public int zhuce(Map map) {
        return xinwenMapper.zhuce(map);
    }

    @Override
    public int addxw(Map map) {
        return xinwenMapper.addxw(map);
    }

    @Override
    public List<xinwen> All() {
        return xinwenMapper.All();
    }

    @Override
    public int Delxw(Map map) {
        return xinwenMapper.Delxw(map);
    }

}
