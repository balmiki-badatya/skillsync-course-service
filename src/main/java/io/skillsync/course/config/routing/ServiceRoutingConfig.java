package io.skillsync.course.config.routing;

import io.skillsync.course.constants.RouteConstant;
import io.skillsync.course.handler.ServiceHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.config.EnableWebFlux;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.ServerResponse;

import static org.springframework.web.reactive.function.server.RequestPredicates.GET;
import static org.springframework.web.reactive.function.server.RequestPredicates.POST;
import static org.springframework.web.reactive.function.server.RouterFunctions.route;

@Configuration
@EnableWebFlux
public class ServiceRoutingConfig {

    private static final String BASE_PATH = RouteConstant.CONTEXT_PATH.concat(RouteConstant.VERSION_V1);
    private static final String GET_COURSE_BY_ID = BASE_PATH.concat(RouteConstant.GET_TOPIC_BY_ID_PATH);
    private static final String CREATE_TOPIC = BASE_PATH.concat(RouteConstant.CREATE_TOPIC);

    @Bean
    public RouterFunction<ServerResponse> courseRoutes(ServiceHandler serviceHandler) {
        return route(GET(GET_COURSE_BY_ID), serviceHandler::getTopicDetailsById)
                .andRoute(POST(CREATE_TOPIC), serviceHandler::createTopic);
    }
}
