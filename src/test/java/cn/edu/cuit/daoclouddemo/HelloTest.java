package cn.edu.cuit.daoclouddemo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class HelloTest extends DaoclouddemoApplicationTests {

    @Autowired
    private HelloService helloService;

    @Test
    public void testHello() {
        System.out.println(helloService.hello());
    }
}