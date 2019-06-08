
 [![](../img/arrow-circle-left.svg)](../README.md)
 [![](../img/arrow-circle-right.svg)](./kubernetes.md)
 
Running Docker Container without Kubernetes
=============================================
 
## Run

If you just want to run the newly created Docker image without kubernetes, execute
the `docker run` command from the terminal:

```
docker run --rm -p 9080:8080  --name=doritos basaki/spring-k8s-example:1.0.0
```

### Options

The following flags are used in our `docker run` command:

- `--rm` flag automatically cleans up the container and removes the file systems
when the container exit.

- `-p` flag maps a `container port` to a `host port`. A container by default,
doesn't publish any of its port to outside world. To make the Spring Boot
application availbale to the outside world, `-p` flag is used. In this case, a
container port of `8080` is mapped to a host port of `9080`.

- `--name` flag names the Docker container as `doritos`. In absence of this flag,
Docker generates a random name for the container.

```
 $ docker run --rm -p 9080:8080  --name=doritos basaki/spring-k8s-example:1.0.0
 
   .   ____          _            __ _ _
  /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
 ( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
  \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
   '  |____| .__|_| |_|_| |_\__, | / / / /
  =========|_|==============|___/=/_/_/_/
  :: Spring Boot ::        (v2.0.6.RELEASE)
 
 2018-10-22 04:50:21.656  INFO 1 --- [           main] com.basaki.k8s.Application               : Starting Application on 98b7510ea7bb with PID 1 (/app.jar started by root in /)
 ...
 2018-10-22 04:50:40.666  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
 2018-10-22 04:50:40.676  INFO 1 --- [           main] com.basaki.k8s.Application               : Started Application in 20.994 seconds (JVM running for 22.839)
```

This should start up the example application at port `9080`. The application
Swagger UI page can be accessed at `http://localhost:9080/swagger-ui.html`.

![](./img/server.png)

## Usage

* Access the client Swagger UI at `https://localhost:9080/swagger-ui.html`.

* Make a POST request to create a book. The client in turn makes a request to the
server to create a book.

![](./img/client-post-req.png)

* If the request is successful, you should get a similar response as shown below:

![](./img/client-post-rsp.png)

* Make a GET request to retrieve the newly created book. The client in turn
 makes a request to the server to retrieve the book. An example response
 is shown below:

![](./img/client-get-req-rsp.png)

 [![](../img/arrow-circle-left.svg)](../README.md)
 [![](../img/arrow-circle-right.svg)](./kubernetes.md)
