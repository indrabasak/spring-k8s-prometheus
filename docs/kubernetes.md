 [![](../img/arrow-circle-left.svg)](./docker.md)

Running Docker Container with Kubernetes
============================================

A `Pod` is the most basic building block of Kubernetes and represents a single
instance of an application. A Pod may contain one or more containers which
are tightly coupled. `Docker` is an example of a container runtime and is most
commonly used in Kubernetes.

A Pod is transient in nature and cannot self-heal itself. A Pod's replication,
self-healing, and fault tolerance capabilities are handled by a `Controller`. 
A `ReplicaSet` is an example of a controller.

A `Deployment` controller is used for creating and updating Pods and ReplicaSets.

A Kubernetes `Service` groups Pods to provide common endpoint to the outside world.

### Deploying an Application

A YAML file, `deployment.yml`, contains all the deployment details.

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: spring-example-deployment
spec:
  selector:
    matchLabels:
      app: spring-example-app
  replicas: 3
  template:
    metadata:
      labels:
        app: spring-example-app
    spec:
      containers:
      - name: spring-example-app
        image: basaki/spring-k8s-example:1.0.0
        ports:
        - containerPort: 8080
          name: server
        - containerPort: 8081
          name: management
``` 
A Deployment is created using the `kubectl create` command. The
object specification described in the `C file is passed as a 
command line parameter using the `-f` option.

```
$ kubectl create -f deployment.yml 
deployment.apps "spring-example-deployment" created
```

As defined in the YAML file, it also creates a ReplicaSet and Pods.

ReplicaSets can be listed using `kubectl get replicasets` coomand,

```
$ kubectl get replicasets
NAME                                   DESIRED   CURRENT   READY     AGE
spring-example-deployment-7b54459d5c   3         3         3         1h

```
Pods can be listed used the `kubectl get pods` command,

```
$ kubectl get pods
NAME                                         READY     STATUS    RESTARTS   AGE
spring-example-deployment-7b54459d5c-6t47x   1/1       Running   0          1h
spring-example-deployment-7b54459d5c-lz2xl   1/1       Running   0          1h
spring-example-deployment-7b54459d5c-v6v74   1/1       Running   0          1h
```

### Creating a Service

```yaml
apiVersion: v1
kind: Service
metadata:
  name: spring-example-service
spec:
  ports:
  - port: 8080
    targetPort: 8080
    nodePort: 30080
    name: http
  - port: 8081
    targetPort: 8081
    nodePort: 30081
    name: management
  selector:
    app: spring-example-app
  type: NodePort
```

```
$ kubectl create -f service.yml 
service "spring-example-service" created
```
`kubectl get service` or `kubectl get svc`

```yaml
$ kubectl get service
NAME                     TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                         AGE
kubernetes               ClusterIP   10.96.0.1       <none>        443/TCP                         6d
spring-example-service   NodePort    10.108.152.37   <none>        8080:30080/TCP,8081:30081/TCP   1m
```

```
kubectl describe svc spring-example-service
```

```
$ kubectl describe services spring-example-service
Name:                     spring-example-service
Namespace:                default
Labels:                   <none>
Annotations:              <none>
Selector:                 app=spring-example-app
Type:                     NodePort
IP:                       10.108.152.37
LoadBalancer Ingress:     localhost
Port:                     http  8080/TCP
TargetPort:               8080/TCP
NodePort:                 http  30080/TCP
Endpoints:                10.1.0.14:8080,10.1.0.15:8080,10.1.0.16:8080
Port:                     management  8081/TCP
TargetPort:               8081/TCP
NodePort:                 management  30081/TCP
Endpoints:                10.1.0.14:8081,10.1.0.15:8081,10.1.0.16:8081
Session Affinity:         None
External Traffic Policy:  Cluster
Events:                   <none>
```

 [![](../img/arrow-circle-left.svg)](./docker.md)