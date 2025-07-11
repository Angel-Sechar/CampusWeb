# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/3.4.7/maven-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/3.4.7/maven-plugin/build-image.html)
* [Consul Discovery](https://docs.spring.io/spring-cloud-consul/reference/discovery.html)
* [Consul Configuration](https://docs.spring.io/spring-cloud-consul/reference/)
* [Spring Security](https://docs.spring.io/spring-boot/3.4.7/reference/web/spring-security.html)
* [Spring Web](https://docs.spring.io/spring-boot/3.4.7/reference/web/servlet.html)
* [Spring Boot Actuator](https://docs.spring.io/spring-boot/3.4.7/reference/actuator/index.html)
* [Validation](https://docs.spring.io/spring-boot/3.4.7/reference/io/validation.html)
* [Spring Data JPA](https://docs.spring.io/spring-boot/3.4.7/reference/data/sql.html#data.sql.jpa-and-spring-data)
* [OAuth2 Client](https://docs.spring.io/spring-boot/3.4.7/reference/web/spring-security.html#web.security.oauth2.client)
* [Docker Compose Support](https://docs.spring.io/spring-boot/3.4.7/reference/features/dev-services.html#features.dev-services.docker-compose)
* [Cloud Bootstrap](https://docs.spring.io/spring-cloud-commons/reference/spring-cloud-commons/application-context-services.html)
* [Gateway](https://docs.spring.io/spring-cloud-gateway/reference/spring-cloud-gateway-server-mvc.html)
* [OpenFeign](https://docs.spring.io/spring-cloud-openfeign/reference/)
* [Cloud LoadBalancer](https://docs.spring.io/spring-cloud-commons/reference/spring-cloud-commons/loadbalancer.html)
* [Resilience4J](https://docs.spring.io/spring-cloud-circuitbreaker/reference/spring-cloud-circuitbreaker-resilience4j.html)
* [Liquibase Migration](https://docs.spring.io/spring-boot/3.4.7/how-to/data-initialization.html#howto.data-initialization.migration-tool.liquibase)

### Guides
The following guides illustrate how to use some features concretely:

* [Securing a Web Application](https://spring.io/guides/gs/securing-web/)
* [Spring Boot and OAuth2](https://spring.io/guides/tutorials/spring-boot-oauth2/)
* [Authenticating a User with LDAP](https://spring.io/guides/gs/authenticating-ldap/)
* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
* [Building a RESTful Web Service with Spring Boot Actuator](https://spring.io/guides/gs/actuator-service/)
* [Validation](https://spring.io/guides/gs/validating-form-input/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Client-side load-balancing with Spring Cloud LoadBalancer](https://spring.io/guides/gs/spring-cloud-loadbalancer/)

### Additional Links
These additional references should also help you:

* [Declarative REST calls with Spring Cloud OpenFeign sample](https://github.com/spring-cloud-samples/feign-eureka)

### Docker Compose support
This project contains a Docker Compose file named `compose.yaml`.
In this file, the following services have been defined:

* sqlserver: [`mcr.microsoft.com/mssql/server:latest`](https://mcr.microsoft.com/en-us/product/mssql/server/about/)

Please review the tags of the used images and set them to the same as you're running in production.

### Maven Parent overrides

Due to Maven's design, elements are inherited from the parent POM to the project POM.
While most of the inheritance is fine, it also inherits unwanted elements like `<license>` and `<developers>` from the parent.
To prevent this, the project POM contains empty overrides for these elements.
If you manually switch to a different parent and actually want the inheritance, you need to remove those overrides.

