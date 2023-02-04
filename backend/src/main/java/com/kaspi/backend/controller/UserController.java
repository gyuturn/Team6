package com.kaspi.backend.controller;

import com.kaspi.backend.dao.UserDao;
import com.kaspi.backend.dto.SignUpRequestDto;
import com.kaspi.backend.util.response.CommonResponseDto;
import com.kaspi.backend.util.response.code.DefaultCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.session.Session;
import org.springframework.session.SessionRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/v1/user")
public class UserController {

    private final UserDao userDao;

    @Autowired
    private  RedisTemplate redisTemplate;
    @Autowired
    private SessionRepository sessionRepository;

    public UserController(UserDao userDao) {
        this.userDao = userDao;
    }


    @PostMapping("")
    public ResponseEntity<CommonResponseDto> signUp(@RequestBody SignUpRequestDto signUpRequestDto) {
        Long userId = userDao.insertUser(signUpRequestDto.getId(),
                signUpRequestDto.getPassword(),
                signUpRequestDto.getGender(),
                signUpRequestDto.getAge()
        );


        Session session = sessionRepository.createSession();
        session.setAttribute("userId",userId);
        sessionRepository.save(session);
        Session byId = sessionRepository.findById(session.getId());



        ResponseCookie responseCookie = ResponseCookie.from("sid", session.getId())
                .httpOnly(true)
                .secure(true)
                .path("/")
                .maxAge(60)
                .domain("yourdomain.net")
                .build();
        return new ResponseEntity(
                CommonResponseDto.toResponse(DefaultCode.SUCCESS_SIGNUP),
                HttpStatus.CREATED
                );
    }

}