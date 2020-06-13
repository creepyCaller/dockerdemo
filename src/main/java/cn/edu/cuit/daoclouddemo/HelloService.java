package cn.edu.cuit.daoclouddemo;

import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class HelloService {

    public String hello() {
        return "Hello in " + new Date().getTime();
    }

}
