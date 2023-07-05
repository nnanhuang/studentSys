package com.example.agile0509;

import com.example.agile0509.common.CommonResult;
import com.example.agile0509.controller.UserController;
import com.example.agile0509.pojo.*;
import com.example.agile0509.service.AuthService;
import com.example.agile0509.service.impl.AuthServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpStatus;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class ApplicationTests {

    @Test
    void contextLoads() {
    }


}
