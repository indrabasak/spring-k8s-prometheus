[![Build Status][travis-badge]][travis-badge-url]
[![Quality Gate][sonarqube-badge]][sonarqube-badge-url] 
[![Technical debt ratio][technical-debt-ratio-badge]][technical-debt-ratio-badge-url] 
[![Coverage][coverage-badge]][coverage-badge-url]

![](./img/kubernetes-docker.svg)
 
Spring Boot Example with Kubernetes and Prometheus
======================================================
This is an example of using a Spring Boot application with Kubernetes and Docker. 

## [Maven Changes](#maven-changes)
In this example, Spotify's [Dockerfile Maven Plugin](https://github.com/spotify/dockerfile-maven) 
is used for creating the Docker image. Spotify reccomends you to use this plugin 
instead of [Docker Maven plugin](https://github.com/spotify/docker-maven-plugin).

Here is the change to this project's `pom.xml`.

```xml
<plugin>
    <groupId>com.spotify</groupId>
    <artifactId>dockerfile-maven-plugin</artifactId>
    <version>1.4.4</version>
    <executions>
        <execution>
            <id>default</id>
            <goals>
                <goal>build</goal>
                <goal>push</goal>
            </goals>
        </execution>
    </executions>
    <configuration>
        <repository>basaki/spring-k8s-example</repository>
        <tag>${project.version}</tag>
        <buildArgs>
            <JAR_FILE>${project.build.finalName}.jar</JAR_FILE>
        </buildArgs>
    </configuration>
</plugin>
```

## [Build](#build)
To build the docker image, execute `mvn clean install` command from the parent directory:

``` bash
$ mvn clean install
...

[INFO]  ---> Using cache
[INFO]  ---> f5d60c9391eb
[INFO] Step 8/8 : ENTRYPOINT ["java", "-Dapp.port=${app.port}", "-jar","/app.jar"]
[INFO] 
[INFO]  ---> Using cache
[INFO]  ---> 3e84ee5ba1cd
[INFO] [Warning] One or more build-args [JAR_FILE] were not consumed
[INFO] Successfully built 3e84ee5ba1cd
[INFO] Successfully tagged basaki/spring-k8s-example:1.0.0
[INFO] 
[INFO] Detected build of image with id 3e84ee5ba1cd
[INFO] Successfully built basaki/spring-k8s-example:1.0.0
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 52.519 s
[INFO] Finished at: 2018-10-21T19:55:36-07:00
[INFO] Final Memory: 67M/525M
[INFO] ------------------------------------------------------------------------
```

If the build is successful, it should create a new Docker image namedm 
`basaki/spring-k8s-example:1.0.0`.

### [Verify](#verify)
You can list all the docker images by typing `docker images` in any terminal,

```bash
$ docker images 
REPOSITORY                                 TAG                 IMAGE ID            CREATED             SIZE
basaki/spring-k8s-example                  1.0.0               3e84ee5ba1cd        10 minutes ago      532MB
<none>                                     <none>              963c418de905        14 minutes ago      532MB
<none>                                     <none>              5eeb5eb716b4        29 minutes ago      532MB
...
```

If you just want to run the newly created Docker image without Kubernetes, 
please go [here](docs/docker.md).

```yaml
 kubectl create -f src/docker/namespace.yml 
namespace/example created

kubectl create -f src/docker/config.yml 
configmap/spring-prom-config created

docker login
Authenticating with existing credentials...
Login Succeeded

 kubectl get deployments -n example
NAME          DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
spring-prom   1         1         1            0           15m
MPORC02MT22Q:spring-k8s-prometheus indra.basak$ kubectl delete deployment spring-prom -n example
deployment.extensions "spring-prom" deleted


```
 
 [![](./img/arrow-circle-right.svg)](./docs/docker.md)

[travis-badge]: https://travis-ci.org/indrabasak/spring-k8s-prometheus.svg?branch=master
[travis-badge-url]: https://travis-ci.org/indrabasak/spring-k8s-prometheus/

[sonarqube-badge]: https://sonarcloud.io/api/project_badges/measure?project=com.basaki%3Aspring-k8s-prometheus&metric=alert_status
[sonarqube-badge-url]: https://sonarcloud.io/dashboard/index/com.basaki:spring-k8s-prometheus

[technical-debt-ratio-badge]: https://sonarcloud.io/api/project_badges/measure?project=com.basaki%3Aspring-k8s-prometheus&metric=sqale_index
[technical-debt-ratio-badge-url]: https://sonarcloud.io/dashboard/index/com.basaki:spring-k8s-example 

[coverage-badge]: https://sonarcloud.io/api/project_badges/measure?project=com.basaki%3Aspring-k8s-prometheus&metric=coverage
[coverage-badge-url]: https://sonarcloud.io/dashboard/index/com.basaki:spring-k8s-example

