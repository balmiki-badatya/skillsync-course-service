package io.skillsync.course.handler;

import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Mono;

@Component
public class ServiceHandler {



    public Mono<ServerResponse> getTopicDetailsById(final ServerRequest serverRequest) {
        return Mono.empty();
    }

    public Mono<ServerResponse> createTopic(final ServerRequest serverRequest) {
        return Mono.empty();
    }
}
