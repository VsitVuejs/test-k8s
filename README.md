# Deployment 

Ожидаем от вас
1. https://github.com/VsitVuejs/test-k8s
2. Вывод команды kubectl get pods -A после деплоя приложения.

```
NAMESPACE     NAME                               READY   STATUS    RESTARTS        AGE
default       gitlab-test-6545d849bc-zjhf8       1/1     Running   0               71s
kube-system   coredns-6f6b679f8f-6kj9f           1/1     Running   0               7h45m
kube-system   etcd-minikube                      1/1     Running   0               7h46m
kube-system   kube-apiserver-minikube            1/1     Running   0               7h46m
kube-system   kube-controller-manager-minikube   1/1     Running   0               7h46m
kube-system   kube-proxy-f5s72                   1/1     Running   0               7h45m
kube-system   kube-scheduler-minikube            1/1     Running   0               7h46m
kube-system   storage-provisioner                1/1     Running   1 (7h45m ago)   7h46m

3. Вывод команды kubectl get deploy -A . Приложение должно быть развернуто в Kubernetes с
использованием Deployment и опубликовано с помощью LoadBalancer или NodePort.

NAMESPACE     NAME          READY   UP-TO-DATE   AVAILABLE   AGE
default       gitlab-test   1/1     1            1           95s
kube-system   coredns       1/1     1            1           7h46m


4. Ответ на запрос к <url>:<port>/metrics , который содержит метрики приложения.

# HELP python_gc_objects_collected_total Objects collected during gc
# TYPE python_gc_objects_collected_total counter
python_gc_objects_collected_total{generation="0"} 215.0
python_gc_objects_collected_total{generation="1"} 173.0
python_gc_objects_collected_total{generation="2"} 0.0
# HELP python_gc_objects_uncollectable_total Uncollectable objects found during GC
# TYPE python_gc_objects_uncollectable_total counter
python_gc_objects_uncollectable_total{generation="0"} 0.0
python_gc_objects_uncollectable_total{generation="1"} 0.0
python_gc_objects_uncollectable_total{generation="2"} 0.0
# HELP python_gc_collections_total Number of times this generation was collected
# TYPE python_gc_collections_total counter
python_gc_collections_total{generation="0"} 78.0
python_gc_collections_total{generation="1"} 7.0
python_gc_collections_total{generation="2"} 0.0
# HELP python_info Python platform information
# TYPE python_info gauge
python_info{implementation="CPython",major="3",minor="10",patchlevel="12",version="3.10.12"} 1.0
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 1.87342848e+08
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 2.9999104e+07
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.73196712636e+09
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 0.19
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 6.0
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1024.0
# HELP flask_exporter_info Information about the Prometheus Flask exporter
# TYPE flask_exporter_info gauge
flask_exporter_info{version="0.23.1"} 1.0
# HELP flask_http_request_duration_seconds Flask HTTP request duration in seconds
# TYPE flask_http_request_duration_seconds histogram
flask_http_request_duration_seconds_bucket{le="0.005",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.01",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.025",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.05",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.075",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.1",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.25",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.5",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="0.75",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="1.0",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="2.5",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="5.0",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="7.5",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="10.0",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_bucket{le="+Inf",method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_count{method="GET",path="/",status="200"} 1.0
flask_http_request_duration_seconds_sum{method="GET",path="/",status="200"} 0.00026410099235363305
# HELP flask_http_request_duration_seconds_created Flask HTTP request duration in seconds
# TYPE flask_http_request_duration_seconds_created gauge
flask_http_request_duration_seconds_created{method="GET",path="/",status="200"} 1.7319671362975965e+09
# HELP flask_http_request_total Total number of HTTP requests
# TYPE flask_http_request_total counter
flask_http_request_total{method="GET",status="200"} 1.0
# HELP flask_http_request_created Total number of HTTP requests
# TYPE flask_http_request_created gauge
flask_http_request_created{method="GET",status="200"} 1.7319671362977533e+09
# HELP flask_http_request_exceptions_total Total number of HTTP requests which resulted in an exception
# TYPE flask_http_request_exceptions_total counter
