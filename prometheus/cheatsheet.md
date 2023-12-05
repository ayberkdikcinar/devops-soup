# Prometheus Cheatsheet

## Definition

**Prometheus** is an open-source monitoring and alerting toolkit designed for reliability and scalability of applications.

- [Docs](https://prometheus.io/docs/introduction/overview/)

### Architecture Components

#### Prometheus Server:

- Core component responsible for collecting, processing, and storing time-series data.
- Pulls metrics from configured targets.
- Stores time-series data locally.
- Evaluates alerting rules.

#### Exporters:

- Collectors that gather metrics from third-party systems and expose them in a format Prometheus can scrape.
- Examples: Node Exporter for system-level metrics, Blackbox Exporter for probing endpoints.

#### Alertmanager:

- Handles alerts sent by Prometheus.
- Manages groupings, silencing, and sending notifications (email, Slack, etc.).

#### Pushgateway:

- Allows short-lived jobs to push metrics.
- Useful for batch jobs or services that cannot be scraped.

#### Service Discovery:

- Service discovery is a crucial feature in Prometheus for dynamically identifying and scraping targets.
- Prometheus supports multiple service discovery mechanisms.
  - **Static Configuration:**
    - Manually specify targets in the `prometheus.yml` file.
    ```yaml
    - job_name: 'example'
      static_configs:
        - targets: ['localhost:9090', 'localhost:9091']
    ```
  - **Consul Service Discovery:**
    - Automatically discover and scrape targets using Consul.
    ```yaml
    - job_name: 'consul'
      consul_sd_configs:
        - server: 'localhost:8500'
          services: ['example']
    ```
  - **Other Service Discovery Mechanisms:**
    - Prometheus supports various mechanisms such as Kubernetes, EC2, DNS, and more.

### Configuration:

[Kubernetes configuration Docs](https://prometheus.io/docs/prometheus/latest/configuration/configuration/#kubernetes_sd_config)

#### `prometheus.yml`:

- Defines scrape targets (jobs).
- Specifies alerting rules.
- Configures the retention period for time-series data.

#### Jobs relabel_configs:

- `relabel_configs` is a mechanism in Prometheus for modifying or filtering labels before scraping or storing metrics.
- It allows for advanced configurations and adjustments to metric data.
- Example:
  ```yaml
  - job_name: 'example'
    static_configs:
      - targets: ['localhost:9090', 'localhost:9091']
    relabel_configs:
      - source_labels: ['instance']
        target_label: 'custom_instance'
        regex: '(.+):\\d+'
        replacement: '$1'
  ```

### Client Libraries:

- Prometheus supports client libraries for instrumenting applications to expose custom metrics.
  - **Examples:**
    - Go: [Prometheus Go Client](https://github.com/prometheus/client_golang)
    - Python: [Prometheus Python Client](https://github.com/prometheus/client_python)
    - Other languages have similar libraries available.

### cAdvisor:

- Container Advisor provides container-level metrics.
- Used for monitoring containerized environments.
- Integrates with Prometheus for scraping container metrics.

### PromQL Basics: [PromQL Basics](https://prometheus.io/docs/prometheus/latest/querying/basics/)

### Rule Files:

- Rule files in Prometheus define alerting and recording rules.
- Rule files have a `.rules` extension.
- Recording rules are used to create new time series that can be queried like any other metric in Prometheus.
- Alerting rules are used to define conditions that, when met, trigger alerts.
- Alerts are notifications sent by Prometheus to Alertmanager, which then manages the routing and handling of alerts (e.g., sending notifications to external systems).

- Example alerting rule file (`alerts.rules`):
  ```yaml
  groups:
    - name: example
      rules:
        - alert: HighErrorRate
          expr: job:request_error_rate:ratio_rate5m > 0.5
          for: 5m
          labels:
            severity: critical
          annotations:
            description: Description of the alert
            summary: High request latency
  ```
- Example recording rule file (`recordings.rules`):
  ```yaml
  groups:
    - name: example
      rules:
        - record: instance_http_requests_total
          expr: sum(http_requests_total{job="example"}) by (instance)
  ```
