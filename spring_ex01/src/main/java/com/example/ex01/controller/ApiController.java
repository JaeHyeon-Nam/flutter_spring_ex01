package com.example.ex01.controller;

import com.example.ex01.dto.ServerInfo;
import com.example.ex01.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ApiController {
    @Autowired
    private DataService dataService;

    @RequestMapping("/api")
    public List<ServerInfo> index(){
        return dataService.getServerInfo();
    }
}
