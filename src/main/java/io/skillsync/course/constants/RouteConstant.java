package io.skillsync.course.constants;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class RouteConstant {
    public static final String CONTEXT_PATH = "/course-service";
    public static final String VERSION_V1 = "V1";
    public static final String GET_TOPIC_BY_ID_PATH = "/course/{id}";
    public static final String CREATE_TOPIC = "/topic";
}
