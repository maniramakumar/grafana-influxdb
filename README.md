# grafana-influxdb
Grafana dashboard for influxdb cluster stats. 

Dashboards are stored at /dashboards dir.
## Build grafana docker image
 ``` 
 	make container
 	make push
 ```
## Deploy using docker
 - By default, the grafana points to influxdb cluster at http://influxdb-svc:8086.
  you can supply your influxdb server as INFLUXDB_SERVICE_URL environment value when starting docker container using -e flag.
 ``` 
 	docker run -d supershal:grafana:v2.6.0
 ```

## Load Graphs
- create datasource with name "influx-internal"


## Deploy grafana docker images to kubernetes
*Assuming you have kubernetes cluster running on your local machine or in cloud.*
 
  - By default, the grafana points to influxdb cluster at http://influxdb-svc:8086.

  you can change INFLUXDB_SERVICE_URL environment variable's value in influxdb-grafana-rc.yaml to point to your influxdb cluster/server.
```
	kubectl create -f influxdb-grafana-rc.yaml
	kubectl create -f influxdb-grafana-svc.yaml
```

 - Access grafana dashboard
 - get endpoint url and port using
 ```
 	kubectl describe svc influxdb-grafana-svc
 ```

## Note
 I have used most of source code except dashboards from https://github.com/kubernetes/heapster/tree/master/grafana.


