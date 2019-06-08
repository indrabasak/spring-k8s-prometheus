

### Version

```bash 
$ kubectl version


Client Version: version.Info{Major:"1", Minor:"5", GitVersion:"v1.5.4", GitCommit:"7243c69eb523aa4377bce883e7c0dd76b84709a1", GitTreeState:"clean", BuildDate:"2017-03-07T23:53:09Z", GoVersion:"go1.7.4", Compiler:"gc", Platform:"darwin/amd64"}

Server Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.3", GitCommit:"2bba0127d85d5a46ab4b778548be28623b32d0b0", GitTreeState:"clean", BuildDate:"2018-05-21T09:05:37Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}

kubectl version
Client Version: version.Info{Major:"1", Minor:"5", GitVersion:"v1.5.4", GitCommit:"7243c69eb523aa4377bce883e7c0dd76b84709a1", GitTreeState:"clean", BuildDate:"2017-03-07T23:53:09Z", GoVersion:"go1.7.4", Compiler:"gc", Platform:"darwin/amd64"}
Server Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.3", GitCommit:"2bba0127d85d5a46ab4b778548be28623b32d0b0", GitTreeState:"clean", BuildDate:"2018-05-21T09:05:37Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}

kubectl version
Client Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.3", GitCommit:"2bba0127d85d5a46ab4b778548be28623b32d0b0", GitTreeState:"clean", BuildDate:"2018-05-21T09:17:39Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"darwin/amd64"}
Server Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.3", GitCommit:"2bba0127d85d5a46ab4b778548be28623b32d0b0", GitTreeState:"clean", BuildDate:"2018-05-21T09:05:37Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}
```

### Current Context

```bash 
$ kubectl config current-context

docker-for-desktop
ibasa-mb-56452:Downloads indra.basak$ kubectl cluster-info
Kubernetes master is running at https://localhost:6443
KubeDNS is running at https://localhost:6443/api/v1/proxy/namespaces/kube-system/services/kube-dns

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

```jshint
$ kubectl get nodes

NAME                 STATUS    AGE
docker-for-desktop   Ready     14d
```

```jshint
$ kubectl get pods — namespace=kube-system

Error from server (NotFound): pods "—" not found
```

```jshint
$ kubectl get pods 

No resources found.
```

```jshint
$ kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

secret "kubernetes-dashboard-certs" created
serviceaccount "kubernetes-dashboard" created
role "kubernetes-dashboard-minimal" created
rolebinding "kubernetes-dashboard-minimal" created
service "kubernetes-dashboard" created
Error from server (BadRequest): error when creating "https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml": the API version in the data (apps/v1beta2) does not match the expected API version (apps/v1)
ibasa-mb-56452:Downloads indra.basak
```

### New

```bash
$ kubectl version

Client Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.3", GitCommit:"2bba0127d85d5a46ab4b778548be28623b32d0b0", GitTreeState:"clean", BuildDate:"2018-05-21T09:17:39Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"darwin/amd64"}

Server Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.3", GitCommit:"2bba0127d85d5a46ab4b778548be28623b32d0b0", GitTreeState:"clean", BuildDate:"2018-05-21T09:05:37Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}
```

```bash
$ kubectl config current-context
docker-for-desktop
```

```bash
$ kubectl cluster-info
Kubernetes master is running at https://localhost:6443
KubeDNS is running at https://localhost:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'
```

```bash
$ kubectl get nodes
NAME                 STATUS    ROLES     AGE       VERSION
docker-for-desktop   Ready     master    11m       v1.10.3
```

```bash
$ kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
secret "kubernetes-dashboard-certs" created
serviceaccount "kubernetes-dashboard" created
role.rbac.authorization.k8s.io "kubernetes-dashboard-minimal" created
rolebinding.rbac.authorization.k8s.io "kubernetes-dashboard-minimal" created
deployment.apps "kubernetes-dashboard" created
service "kubernetes-dashboard" created
```

```bash
$ kubectl get pods
No resources found.

$ kubectl get deployment
No resources found.
```

```
$ curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.7/bin/linux/amd64/kubectl
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 50.0M  100 50.0M    0     0  36.3M      0  0:00:01  0:00:01 --:--:-- 36.3M
```

```bash
$ chmod +x ./kubectl
ibasa-mb-57485:~ indra.basak$ sudo mv ./kubectl /usr/local/bin/kubectl
Password:
ibasa-mb-57485:~ indra.basak$ 
```

```bash
get pod --all-namespaces
NAMESPACE     NAME                                         READY     STATUS    RESTARTS   AGE
docker        compose-7447646cf5-wtq79                     1/1       Running   0          1h
docker        compose-api-6fbc44c575-kg6s6                 1/1       Running   0          1h
kube-system   etcd-docker-for-desktop                      1/1       Running   1          1h
kube-system   kube-apiserver-docker-for-desktop            1/1       Running   1          1h
kube-system   kube-controller-manager-docker-for-desktop   1/1       Running   1          1h
kube-system   kube-dns-86f4d74b45-nc5pz                    3/3       Running   0          1h
kube-system   kube-proxy-6rq6r                             1/1       Running   0          1h
kube-system   kube-scheduler-docker-for-desktop            1/1       Running   2          1h
kube-system   kubernetes-dashboard-7b9c7bc8c9-t26zn        1/1       Running   1          1h
```

```bash
$ kubectl get pods --namespace=kube-system
NAME                                         READY     STATUS    RESTARTS   AGE
etcd-docker-for-desktop                      1/1       Running   1          1h
kube-apiserver-docker-for-desktop            1/1       Running   1          1h
kube-controller-manager-docker-for-desktop   1/1       Running   1          1h
kube-dns-86f4d74b45-nc5pz                    3/3       Running   0          1h
kube-proxy-6rq6r                             1/1       Running   0          1h
kube-scheduler-docker-for-desktop            1/1       Running   2          1h
kubernetes-dashboard-7b9c7bc8c9-t26zn        1/1       Running   1          1h
```

```bash
$ kubectl port-forward kubernetes-dashboard-7b9c7bc8c9-t26zn 8443:8443 --namespace=kube-system
Forwarding from 127.0.0.1:8443 -> 8443
Forwarding from [::1]:8443 -> 8443


```

```
$ kubectl apply -f deployment.yml
deployment.apps "spring-boot-deployment" created
```

```
$ kubectl get deployment spring-boot-deployment
NAME                     DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
spring-boot-deployment   3         3         3            3           1m

$ kubectl get deployments
NAME                     DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
spring-boot-deployment   3         3         3            3           1h

$ kubectl get replicasets
NAME                                DESIRED   CURRENT   READY     AGE
spring-boot-deployment-59b7cbf74f   3         3         3         1h

```

```
 kubectl get pods
NAME                                      READY     STATUS    RESTARTS   AGE
spring-boot-deployment-59b7cbf74f-5tm9x   1/1       Running   0          4m
spring-boot-deployment-59b7cbf74f-7rdkr   1/1       Running   0          4m
spring-boot-deployment-59b7cbf74f-8x6wd   1/1       Running   0          4m
```

```
k$ kubectl describe pod spring-boot-deployment-59b7cbf74f-8x6wd
Name:           spring-boot-deployment-59b7cbf74f-8x6wd
Namespace:      default
Node:           docker-for-desktop/192.168.65.3
Start Time:     Thu, 18 Oct 2018 12:03:13 -0700
Labels:         app=spring-boot-app
                pod-template-hash=1563769309
Annotations:    <none>
Status:         Running
IP:             10.1.0.12
Controlled By:  ReplicaSet/spring-boot-deployment-59b7cbf74f
Containers:
  spring-boot-app:
    Container ID:   docker://7972e209fa691aa91be375b53fc9153b184accd2eb9b3358fd16709b87d3eef2
    Image:          basaki/spring-k8s-example:1.0.0
    Image ID:       docker://sha256:e1eaaf01439e0e1da0338255b3107396aa8ce0a0287984e947c1f726dc0f0e13
    Ports:          8080/TCP, 8081/TCP
    Host Ports:     0/TCP, 0/TCP
    State:          Running
      Started:      Thu, 18 Oct 2018 12:03:15 -0700
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-xdkg5 (ro)
Conditions:
  Type           Status
  Initialized    True 
  Ready          True 
  PodScheduled   True 
Volumes:
  default-token-xdkg5:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-xdkg5
    Optional:    false
QoS Class:       BestEffort
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:          <none>

```

```
$ kubectl logs spring-boot-deployment-59b7cbf74f-8x6wd

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.0.1.RELEASE)

2018-10-18 19:03:21.450  INFO 1 --- [           main] com.basaki.server.ServerApplication      : Starting ServerApplication on spring-boot-deployment-59b7cbf74f-8x6wd with PID 1 (/app.jar started by root in /)
2018-10-18 19:03:21.477  INFO 1 --- [           main] com.basaki.server.ServerApplication      : No active profile set, falling back to default profiles: default
2018-10-18 19:03:21.792  INFO 1 --- [           main] ConfigServletWebServerApplicationContext : Refreshing org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext@7bb11784: startup date [Thu Oct 18 19:03:21 UTC 2018]; root of context hierarchy
2018-10-18 19:03:32.731  INFO 1 --- [           main] trationDelegate$BeanPostProcessorChecker : Bean 'org.springframework.transaction.annotation.ProxyTransactionManagementConfiguration' of type [org.springframework.transaction.annotation.ProxyTransactionManagementConfiguration$$EnhancerBySpringCGLIB$$6a416a15] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2018-10-18 19:03:34.687  INFO 1 --- [           main] trationDelegate$BeanPostProcessorChecker : Bean 'org.springframework.security.config.annotation.configuration.ObjectPostProcessorConfiguration' of type [org.springframework.security.config.annotation.configuration.ObjectPostProcessorConfiguration$$EnhancerBySpringCGLIB$$2ef324f] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2018-10-18 19:03:34.774  INFO 1 --- [           main] trationDelegate$BeanPostProcessorChecker : Bean 'objectPostProcessor' of type [org.springframework.security.config.annotation.configuration.AutowireBeanFactoryObjectPostProcessor] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2018-10-18 19:03:34.787  INFO 1 --- [           main] trationDelegate$BeanPostProcessorChecker : Bean 'org.springframework.security.access.expression.method.DefaultMethodSecurityExpressionHandler@4f80542f' of type [org.springframework.security.access.expression.method.DefaultMethodSecurityExpressionHandler] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2018-10-18 19:03:34.808  INFO 1 --- [           main] trationDelegate$BeanPostProcessorChecker : Bean 'org.springframework.security.config.annotation.method.configuration.GlobalMethodSecurityConfiguration' of type [org.springframework.security.config.annotation.method.configuration.GlobalMethodSecurityConfiguration$$EnhancerBySpringCGLIB$$27c3d501] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2018-10-18 19:03:34.874  INFO 1 --- [           main] trationDelegate$BeanPostProcessorChecker : Bean 'methodSecurityMetadataSource' of type [org.springframework.security.access.method.DelegatingMethodSecurityMetadataSource] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2018-10-18 19:03:37.303  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2018-10-18 19:03:37.398  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2018-10-18 19:03:37.400  INFO 1 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet Engine: Apache Tomcat/8.5.29
2018-10-18 19:03:37.493  INFO 1 --- [ost-startStop-1] o.a.catalina.core.AprLifecycleListener   : The APR based Apache Tomcat Native library which allows optimal performance in production environments was not found on the java.library.path: [/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib]
2018-10-18 19:03:37.929  INFO 1 --- [ost-startStop-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2018-10-18 19:03:37.931  INFO 1 --- [ost-startStop-1] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 16144 ms
2018-10-18 19:03:40.979  INFO 1 --- [ost-startStop-1] o.s.j.d.e.EmbeddedDatabaseFactory        : Starting embedded database: url='jdbc:hsqldb:mem:testdb', username='sa'
2018-10-18 19:03:42.248  INFO 1 --- [ost-startStop-1] o.s.jdbc.datasource.init.ScriptUtils     : Executing SQL script from class path resource [db/create-db.sql]
2018-10-18 19:03:42.267  INFO 1 --- [ost-startStop-1] o.s.jdbc.datasource.init.ScriptUtils     : Executed SQL script from class path resource [db/create-db.sql] in 18 ms.
2018-10-18 19:03:44.288  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'characterEncodingFilter' to: [/*]
2018-10-18 19:03:44.289  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'hiddenHttpMethodFilter' to: [/*]
2018-10-18 19:03:44.289  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'httpPutFormContentFilter' to: [/*]
2018-10-18 19:03:44.289  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'requestContextFilter' to: [/*]
2018-10-18 19:03:44.290  INFO 1 --- [ost-startStop-1] .s.DelegatingFilterProxyRegistrationBean : Mapping filter: 'springSecurityFilterChain' to: [/*]
2018-10-18 19:03:44.291  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'httpTraceFilter' to: [/*]
2018-10-18 19:03:44.291  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'webMvcMetricsFilter' to: [/*]
2018-10-18 19:03:44.291  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.FilterRegistrationBean   : Mapping filter: 'logFilter' to: [/*]
2018-10-18 19:03:44.292  INFO 1 --- [ost-startStop-1] o.s.b.w.servlet.ServletRegistrationBean  : Servlet dispatcherServlet mapped to [/]
2018-10-18 19:03:45.895  INFO 1 --- [           main] j.LocalContainerEntityManagerFactoryBean : Building JPA container EntityManagerFactory for persistence unit 'default'
2018-10-18 19:03:46.105  INFO 1 --- [           main] o.hibernate.jpa.internal.util.LogHelper  : HHH000204: Processing PersistenceUnitInfo [
        name: default
        ...]
2018-10-18 19:03:47.152  INFO 1 --- [           main] org.hibernate.Version                    : HHH000412: Hibernate Core {5.2.16.Final}
2018-10-18 19:03:47.160  INFO 1 --- [           main] org.hibernate.cfg.Environment            : HHH000206: hibernate.properties not found
2018-10-18 19:03:47.449  INFO 1 --- [           main] o.hibernate.annotations.common.Version   : HCANN000001: Hibernate Commons Annotations {5.0.1.Final}
2018-10-18 19:03:48.804  INFO 1 --- [           main] org.hibernate.dialect.Dialect            : HHH000400: Using dialect: org.hibernate.dialect.HSQLDialect
2018-10-18 19:03:50.959  INFO 1 --- [           main] o.h.t.schema.internal.SchemaCreatorImpl  : HHH000476: Executing import script 'org.hibernate.tool.schema.internal.exec.ScriptSourceInputNonExistentImpl@79dc5318'
2018-10-18 19:03:50.972  INFO 1 --- [           main] j.LocalContainerEntityManagerFactoryBean : Initialized JPA EntityManagerFactory for persistence unit 'default'
2018-10-18 19:03:58.666  WARN 1 --- [           main] aWebConfiguration$JpaWebMvcConfiguration : spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2018-10-18 19:03:59.158  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerMapping : Mapped "{[/books/{id}],methods=[GET],produces=[application/json]}" onto public com.basaki.server.data.entity.Book com.basaki.server.controller.BookController.read(java.util.UUID)
2018-10-18 19:03:59.174  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerMapping : Mapped "{[/books],methods=[POST]}" onto public com.basaki.server.data.entity.Book com.basaki.server.controller.BookController.create(com.basaki.server.model.BookRequest)
2018-10-18 19:03:59.179  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerMapping : Mapped "{[/error]}" onto public org.springframework.http.ResponseEntity<com.basaki.server.error.ErrorInfo> com.basaki.server.controller.CustomErrorController.error(javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse)
2018-10-18 19:03:59.194  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerMapping : Mapped "{[/swagger-resources/configuration/security]}" onto public org.springframework.http.ResponseEntity<springfox.documentation.swagger.web.SecurityConfiguration> springfox.documentation.swagger.web.ApiResourceController.securityConfiguration()
2018-10-18 19:03:59.204  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerMapping : Mapped "{[/swagger-resources/configuration/ui]}" onto public org.springframework.http.ResponseEntity<springfox.documentation.swagger.web.UiConfiguration> springfox.documentation.swagger.web.ApiResourceController.uiConfiguration()
2018-10-18 19:03:59.208  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerMapping : Mapped "{[/swagger-resources]}" onto public org.springframework.http.ResponseEntity<java.util.List<springfox.documentation.swagger.web.SwaggerResource>> springfox.documentation.swagger.web.ApiResourceController.swaggerResources()
2018-10-18 19:03:59.528  INFO 1 --- [           main] o.s.b.a.e.web.EndpointLinksResolver      : Exposing 2 endpoint(s) beneath base path ''
2018-10-18 19:03:59.640  INFO 1 --- [           main] s.b.a.e.w.s.WebMvcEndpointHandlerMapping : Mapped "{[/health],methods=[GET],produces=[application/vnd.spring-boot.actuator.v2+json || application/json]}" onto public java.lang.Object org.springframework.boot.actuate.endpoint.web.servlet.AbstractWebMvcEndpointHandlerMapping$OperationHandler.handle(javax.servlet.http.HttpServletRequest,java.util.Map<java.lang.String, java.lang.String>)
2018-10-18 19:03:59.651  INFO 1 --- [           main] s.b.a.e.w.s.WebMvcEndpointHandlerMapping : Mapped "{[/info],methods=[GET],produces=[application/vnd.spring-boot.actuator.v2+json || application/json]}" onto public java.lang.Object org.springframework.boot.actuate.endpoint.web.servlet.AbstractWebMvcEndpointHandlerMapping$OperationHandler.handle(javax.servlet.http.HttpServletRequest,java.util.Map<java.lang.String, java.lang.String>)
2018-10-18 19:04:01.508  INFO 1 --- [           main] pertySourcedRequestMappingHandlerMapping : Mapped URL path [/v2/api-docs] onto method [public org.springframework.http.ResponseEntity<springfox.documentation.spring.web.json.Json> springfox.documentation.swagger2.web.Swagger2Controller.getDocumentation(java.lang.String,javax.servlet.http.HttpServletRequest)]
2018-10-18 19:04:02.095  INFO 1 --- [           main] c.b.server.config.SecurityConfiguration  : Added user userA with password {bcrypt}$2a$10$n5v7onFOS0h2V2oLmyqK9uJdZRHpIghP2rFia86ALodCUfEwm4rme
2018-10-18 19:04:02.572  INFO 1 --- [           main] c.b.server.config.SecurityConfiguration  : Added user userB with password {bcrypt}$2a$10$8nznpBdaZ/v19Os5v02iAOkJg0IJW5bo2uj1p3U2rd4icfmqB/dRy
2018-10-18 19:04:02.914  INFO 1 --- [           main] c.b.server.config.SecurityConfiguration  : Adding security for path /books and method POST
2018-10-18 19:04:02.919  INFO 1 --- [           main] c.b.server.config.SecurityConfiguration  : Adding security for path /books/** and method GET
2018-10-18 19:04:02.931  INFO 1 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Creating filter chain: Ant [pattern='/v2/api-docs/**'], []
2018-10-18 19:04:02.931  INFO 1 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Creating filter chain: Ant [pattern='/swagger.json'], []
2018-10-18 19:04:02.931  INFO 1 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Creating filter chain: Ant [pattern='/swagger-ui.html'], []
2018-10-18 19:04:02.931  INFO 1 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Creating filter chain: Ant [pattern='/swagger-resources/**'], []
2018-10-18 19:04:02.931  INFO 1 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Creating filter chain: Ant [pattern='/webjars/**'], []
2018-10-18 19:04:03.292  INFO 1 --- [           main] o.s.s.web.DefaultSecurityFilterChain     : Creating filter chain: org.springframework.security.web.util.matcher.AnyRequestMatcher@1, [org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@1f2f9244, org.springframework.security.web.context.SecurityContextPersistenceFilter@53d1b9b3, org.springframework.security.web.header.HeaderWriterFilter@207b8649, org.springframework.security.web.authentication.logout.LogoutFilter@4febb875, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@a776e, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@163d04ff, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@7e928e2f, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@4c4d27c8, org.springframework.security.web.session.SessionManagementFilter@34997338, org.springframework.security.web.access.ExceptionTranslationFilter@20a8a64e, org.springframework.security.web.access.intercept.FilterSecurityInterceptor@b78a709]
2018-10-18 19:04:04.596  INFO 1 --- [           main] o.s.w.s.handler.SimpleUrlHandlerMapping  : Mapped URL path [/**/favicon.ico] onto handler of type [class org.springframework.web.servlet.resource.ResourceHttpRequestHandler]
2018-10-18 19:04:05.109  INFO 1 --- [           main] s.w.s.m.m.a.RequestMappingHandlerAdapter : Looking for @ControllerAdvice: org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext@7bb11784: startup date [Thu Oct 18 19:03:21 UTC 2018]; root of context hierarchy
2018-10-18 19:04:05.649  INFO 1 --- [           main] o.s.w.s.handler.SimpleUrlHandlerMapping  : Mapped URL path [/webjars/**] onto handler of type [class org.springframework.web.servlet.resource.ResourceHttpRequestHandler]
2018-10-18 19:04:05.650  INFO 1 --- [           main] o.s.w.s.handler.SimpleUrlHandlerMapping  : Mapped URL path [/**] onto handler of type [class org.springframework.web.servlet.resource.ResourceHttpRequestHandler]
2018-10-18 19:04:05.830  INFO 1 --- [           main] .m.m.a.ExceptionHandlerExceptionResolver : Detected @ExceptionHandler methods in exceptionProcessor
2018-10-18 19:04:10.645  INFO 1 --- [           main] .s.s.UserDetailsServiceAutoConfiguration : 

Using generated security password: 49f5cb2b-fca9-4776-bb67-34b6141bdf33

2018-10-18 19:04:11.133  INFO 1 --- [           main] o.s.j.e.a.AnnotationMBeanExporter        : Registering beans for JMX exposure on startup
2018-10-18 19:04:11.301  INFO 1 --- [           main] o.s.c.support.DefaultLifecycleProcessor  : Starting beans in phase 2147483647
2018-10-18 19:04:11.329  INFO 1 --- [           main] d.s.w.p.DocumentationPluginsBootstrapper : Context refreshed
2018-10-18 19:04:11.682  INFO 1 --- [           main] d.s.w.p.DocumentationPluginsBootstrapper : Found 1 custom documentation plugin(s)
2018-10-18 19:04:12.026  INFO 1 --- [           main] s.d.s.w.s.ApiListingReferenceScanner     : Scanning for api listing references
2018-10-18 19:04:13.502  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2018-10-18 19:04:13.540  INFO 1 --- [           main] com.basaki.server.ServerApplication      : Started ServerApplication in 55.25 seconds (JVM running for 57.77)
```

```
$ kubectl create -f service.yml 
service "spring-boot-service" created

```
```
$ kubectl get svc
NAME                  TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                         AGE
kubernetes            ClusterIP   10.96.0.1       <none>        443/TCP                         1d
spring-boot-service   NodePort    10.108.46.191   <none>        8080:31235/TCP,8081:32058/TCP   6m
```

Still cannot access `http://localhost:8080/swagger-ui.html`

```
$ kubectl describe svc spring-boot-service
Name:                     spring-boot-service
Namespace:                default
Labels:                   <none>
Annotations:              <none>
Selector:                 app=spring-boot-app
Type:                     NodePort
IP:                       10.108.46.191
LoadBalancer Ingress:     localhost
Port:                     http  8080/TCP
TargetPort:               8080/TCP
NodePort:                 http  31235/TCP
Endpoints:                10.1.0.11:8080,10.1.0.12:8080,10.1.0.13:8080
Port:                     management  8081/TCP
TargetPort:               8081/TCP
NodePort:                 management  32058/TCP
Endpoints:                10.1.0.11:8081,10.1.0.12:8081,10.1.0.13:8081
Session Affinity:         None
External Traffic Policy:  Cluster
Events:                   <none>
```
```
 kubectl get pods -o wide
NAME                                      READY     STATUS    RESTARTS   AGE       IP          NODE
spring-boot-deployment-59b7cbf74f-5tm9x   1/1       Running   0          2h        10.1.0.13   docker-for-desktop
spring-boot-deployment-59b7cbf74f-7rdkr   1/1       Running   0          2h        10.1.0.11   docker-for-desktop
spring-boot-deployment-59b7cbf74f-8x6wd   1/1       Running   0          2h        10.1.0.12   docker-for-desktop

```
Cannot access `http://10.108.46.191:8080/swagger-ui.html` or `http://10.1.0.11:8080/swagger-ui.html`

```
$ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
6eba63993ca0        e1eaaf01439e        "java -Dapp.port=${a…"   2 hours ago         Up 2 hours                              k8s_spring-boot-app_spring-boot-deployment-59b7cbf74f-5tm9x_default_7685555e-d308-11e8-8db5-025000000001_0
7972e209fa69        e1eaaf01439e        "java -Dapp.port=${a…"   2 hours ago         Up 2 hours                              k8s_spring-boot-app_spring-boot-deployment-59b7cbf74f-8x6wd_default_768951ce-d308-11e8-8db5-025000000001_0
e7e0537ddd01        e1eaaf01439e        "java -Dapp.port=${a…"   2 hours ago         Up 2 hours                              k8s_spring-boot-app_spring-boot-deployment-59b7cbf74f-7rdkr_default_76887578-d308-11e8-8db5-025000000001_0

```

```
$ kubectl cluster-info
Kubernetes master is running at https://localhost:6443
KubeDNS is running at https://localhost:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.

```

```
$ kubectl get services spring-boot-service
NAME                  TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)                         AGE
spring-boot-service   NodePort   10.108.46.191   <none>        8080:31235/TCP,8081:32058/TCP   19h

```

```
$ kubectl describe services spring-boot-service
Name:                     spring-boot-service
Namespace:                default
Labels:                   <none>
Annotations:              <none>
Selector:                 app=spring-boot-app
Type:                     NodePort
IP:                       10.108.46.191
LoadBalancer Ingress:     localhost
Port:                     http  8080/TCP
TargetPort:               8080/TCP
NodePort:                 http  31235/TCP
Endpoints:                10.1.0.11:8080,10.1.0.12:8080,10.1.0.13:8080
Port:                     management  8081/TCP
TargetPort:               8081/TCP
NodePort:                 management  32058/TCP
Endpoints:                10.1.0.11:8081,10.1.0.12:8081,10.1.0.13:8081
Session Affinity:         None
External Traffic Policy:  Cluster
Events:                   <none>

```

```
$ kubectl create -f ingress.yml 
ingress.extensions "spring-boot-ingress" created

```

```
$ cat /etc/hosts
##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##
127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost 

```

```
$ kubectl delete ingress spring-boot-ingress
ingress.extensions "spring-boot-ingress" deleted

```

```
$ kubectl get ingress spring-boot-ingress
NAME                  HOSTS     ADDRESS   PORTS     AGE
spring-boot-ingress   *                   80        5m

```

```
$ kubectl explain service
KIND:     Service
VERSION:  v1

DESCRIPTION:
     Service is a named abstraction of software service (for example, mysql)
     consisting of local port (for example 3306) that the proxy listens on, and
     the selector that determines which pods will answer requests sent through
     the proxy.

FIELDS:
   apiVersion   <string>
     APIVersion defines the versioned schema of this representation of an
     object. Servers should convert recognized schemas to the latest internal
     value, and may reject unrecognized values. More info:
     https://git.k8s.io/community/contributors/devel/api-conventions.md#resources

   kind <string>
     Kind is a string value representing the REST resource this object
     represents. Servers may infer this from the endpoint the client submits
     requests to. Cannot be updated. In CamelCase. More info:
     https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds

   metadata     <Object>
     Standard object's metadata. More info:
     https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata

   spec <Object>
     Spec defines the behavior of a service.
     https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status

   status       <Object>
     Most recently observed status of the service. Populated by the system.
     Read-only. More info:
     https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status
```

```
$ kubectl apply -f service.yml 
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
The Service "spring-boot-service" is invalid: spec.ports[0].nodePort: Invalid value: 8080: provided port is not in the valid range. The range of valid ports is 30000-32767
```

```
$ kubectl apply -f service.yml 
Warning: kubectl apply should be used on resource created by either kubectl create --save-config or kubectl apply
service "spring-boot-service" configured

```

```
$ kubectl get endpoints
NAME                  ENDPOINTS                                                  AGE
kubernetes            192.168.65.3:6443                                          1d
spring-boot-service   10.1.0.11:8081,10.1.0.12:8081,10.1.0.13:8081 + 3 more...   21h
```

## Delete Ingress
```
$ kubectl get ingress
NAME                  HOSTS     ADDRESS   PORTS     AGE
spring-boot-ingress   *                   80        2d
ibasa-mb-57485:spring-k8s-example indra.basak$ kubectl delete ingress spring-boot-ingress
ingress.extensions "spring-boot-ingress" deleted
ibasa-mb-57485:spring-k8s-example indra.basak$ kubectl get ingress
No resources found.
```

## Delete Service
```
$ kubectl get service
NAME                  TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                         AGE
kubernetes            ClusterIP   10.96.0.1       <none>        443/TCP                         4d
spring-boot-service   NodePort    10.108.46.191   <none>        8080:30080/TCP,8081:30081/TCP   3d
ibasa-mb-57485:spring-k8s-example indra.basak$ kubectl delete service spring-boot-service
service "spring-boot-service" deleted
ibasa-mb-57485:spring-k8s-example indra.basak$ kubectl get service
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   4d
```

## Delete Deployment
```
$ kubectl get pods
NAME                                      READY     STATUS    RESTARTS   AGE
spring-boot-deployment-59b7cbf74f-5tm9x   1/1       Running   0          3d
spring-boot-deployment-59b7cbf74f-7rdkr   1/1       Running   0          3d
spring-boot-deployment-59b7cbf74f-8x6wd   1/1       Running   0          3d

$ kubectl get nodes
NAME                 STATUS    ROLES     AGE       VERSION
docker-for-desktop   Ready     master    4d        v1.10.3

$ kubectl get deployments
NAME                     DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
spring-boot-deployment   3         3         3            3           3d

$ kubectl delete deployments spring-boot-deployment
deployment.extensions "spring-boot-deployment" deleted

$ kubectl get deployments
No resources found.

$ kubectl get nodes
NAME                 STATUS    ROLES     AGE       VERSION
docker-for-desktop   Ready     master    4d        v1.10.3

$ kubectl get pods
No resources found.

```

### Create Deployment
```bash
$ kubectl create -f deployment.yml 
deployment.apps "spring-example-deployment" created
```