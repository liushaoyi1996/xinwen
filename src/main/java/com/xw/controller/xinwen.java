package com.xw.controller;

import com.xw.service.IXinwenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/xw")
public class xinwen {
    @Autowired
    IXinwenService xinwenService;

    @RequestMapping("/log")
    @ResponseBody
    public  String admin(String name1,String psw){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        map.put("psw",psw);
        System.out.println("+++"+name1+"+++"+psw);
        int i=xinwenService.adminLog(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }
    @RequestMapping("/zhuce")
    @ResponseBody
    public String zhuce(String name1,String psw,String psw2){
        if(psw==psw2||psw.equals(psw2)||name1==""||psw==""||psw2=="") {
            Map<String,String> map=new HashMap();
            map.put("name1",name1);
            map.put("psw",psw);
            int i=xinwenService.zhuce(map);
            if(i==1){
                return "Y";
            }
            return "N";
        }else{
            return "NN";
        }
    }

    @RequestMapping("/addxw")
    @ResponseBody
    public  String addxw(String title,String main,String name1,String time){
        Map<String,String> map=new HashMap<String,String>();
        map.put("title",title);
        map.put("main",main);
        map.put("name1",name1);
        map.put("time",time);
        int i=xinwenService.addxw(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

    @RequestMapping("/All")
    public String All(Map map){
        List<xinwen> list=xinwenService.All();
        map.put("list",list);
        return "index";
    }

    @RequestMapping("/Delxw")
    @ResponseBody
    public String Delxw(String name1){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        int i = xinwenService.Delxw(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

}

