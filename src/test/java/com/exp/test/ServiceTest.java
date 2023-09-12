package com.exp.test;

import com.exp.mapper.UserMapper;
import com.exp.service.StatService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ServiceTest {

    @Autowired
    private StatService statService;


    @Test
    public void pieChartsTest(){
        List<Map<String, Object>> maps = statService.pieCharts();
        String drilldown = maps.get(0).get("drilldown").toString();
        Assert.assertEquals("Beijing",drilldown);
//        System.out.println(statService.pieCharts().toString());
    }
    @Test
    public void pieChartsTest2(){
        List<Map<String, Object>> maps = statService.pieCharts();
        String drilldown = maps.get(1).get("drilldown").toString();
        Assert.assertEquals("Shandong Province",drilldown);
    }
    @Test
    public void columnChartsTest(){
        List<Map> maps = statService.columnCharts();
        String deptName = maps.get(0).get("deptName").toString();
        Assert.assertEquals("Asset Management Department",deptName);

    }
    @Test
    public void columnChartsTest2(){
        List<Map> maps = statService.columnCharts();
        String num = maps.get(0).get("num").toString();
        Assert.assertEquals("1",num);

    }

    @Test
    public void lineChartsTest(){
        List<Map> maps = statService.lineCharts();
        String num = maps.get(0).get("num").toString();
        Assert.assertEquals("2",num);

    }

    @Test
    public void lineChartsTest2(){
        List<Map> maps = statService.lineCharts();
        String name = maps.get(0).get("name").toString();
        Assert.assertEquals("01",name);

    }

}
