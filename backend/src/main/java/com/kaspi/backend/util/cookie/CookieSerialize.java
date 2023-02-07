package com.kaspi.backend.util.cookie;

import java.net.MalformedURLException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.session.web.http.CookieSerializer;
import org.springframework.session.web.http.DefaultCookieSerializer;

@Configuration
@Slf4j
public class CookieSerialize {

    @Bean
    public CookieSerializer cookieSerializer() throws MalformedURLException {
        log.info("cookie fileter");
        DefaultCookieSerializer serializer = new DefaultCookieSerializer();
        serializer.setDomainName("localhost");
        return serializer;
    }
}

