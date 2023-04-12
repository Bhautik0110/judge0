### Judge0

Judge0 is an open-source online code execution system.

### Architecture

Below mentioned components used by `judge0`.

`Postgresql` used to store code, and result.

`Redis` for queueing

`API Server` handle external request, and execute code.

`Worker` Worker listen the redis queue, and execute code.

### Working Model

Two ways of submission support by `Judge0`, First is synchronously, and asynchronously with `wait` query parameter while creating submission.

- synchronously: we need to supply `wait=true`, API server run the code, and pass the result in the response.

- asynchronously(default): API server write code to postgresql, and push the message to redis. Available worker can run the code and store result in postgresql.

### Additional notes
- Under the hood, judge0 uses isolate(package). It must need cgroup v0.
- It has also required priviledge mode.

### Installation

```shell
# alias settings
$> alias k=kubectl

# namespace creation
$> k create ns judge0

# default namespace setting
$> k config set-context --current --namespace=judge0

# load bitnami helm chart
$> helm repo add bitnami https://charts.bitnami.com/bitnami

# install postgresql using bitnami helm chart
$> helm -n judge0 install postgres -f ./deployments/postgresql.yaml bitnami/postgresql

# install redis using bitnami helm chart
$> helm -n judge0 install redis -f ./deployments/redis.yaml bitnami/redis

# configuration for judge0
$> k apply -f ./configmap.yaml

# deployment | svc
$> k apply -f ./deployments.yaml
$> k apply -f ./svc.yaml
```

### Automation load testing

```shell
# Run hey_automation.sh and write STDOUT to hey_result.log
sh ./hey_automation.sh > hey_result.log

cat hey_result.log
```

### Useful link(s)
- https://github.com/judge0/judge0/issues/118
- https://ce.judge0.com/#system-and-configuration


### Questions
- [ ] Does `isolate` use cpu and memory limit of container? 


Testing
