title: Logging at scale using Graylog - Billion+ messages, 100K req/sec
output: index.html
controls: false
style: style.css

---
# Logging at scale using Graylog - Billion+ messages, 100K req/sec

---
<div class="author">
  <h1 class="name">Rohit Gupta</h1>
  <h3 class="twitter">
    <b><a href="http://twitter.com/@rohit01">@rohit01</a></b>
  </h3>
  <h3 class="twitter">
    <b>Production Engineer II, Ola</b>
  </h3>
  <h3 class="url">
    <b><a href="https://www.rohit.io">www.rohit.io</a></b>
  </h3>
</div>

---
## What is Graylog?

* Open source log management that actually works.
* Search, analysis and alerting across all of your log files.

---
## Ola Infrastructure Overview

* Hundreds of micro-services
* 100k requests per second

---
## When did we start using it?

* We found managing ELK clusters require high maintenance intensive.
* We were revamping our infra and centralized logging was a basic requirement.

---
## But why Graylog?

* Great UI, best suited for viewing log
* Several input & output options
* Easy manageability of elasticsearch indexes
* Realtime log analysis and alerts
* Dashboards

---
## How the pipeline looks?

* Fluentd
* Kafka
* Graylog Server
* Elasticsearch

---
## Problems & Learnings

* Huge message lag - several reasons
    * Plan capacity requirements
    * Limit log message size
    * Use consistent datatype in json
    * Avoid buffer at multiple levels
    * Send gelf formatted message to kafka
* Use native docker log driver: json-log

---
## Who all loved it?

* Developers
* Devops
* Management

---
# Questions?

---
# Thank You :)
