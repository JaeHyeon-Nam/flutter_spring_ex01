package com.example.ex01.service;

import org.springframework.stereotype.Service;

@Service
public class DataService {
    @Value("${datapath}")
    private String datapath;

    private Map<String,String> getServerData(){

    }
}
