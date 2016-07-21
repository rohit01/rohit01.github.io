title: Logging at scale using Graylog - Billion+ messages, 100K req/sec
output: index.html
controls: false
style: style.css


---
# Logging at scale using Graylog - Billion+ messages, 100K req/sec
<!-- Slide #1 -->

<!-- Slide #2 -->
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

<!-- Slide #3 -->
---
## <b>What is Graylog?</b>

* Open source log management that actually works.
* Search, analysis and alerting across all of your log files.

<!-- Slide #4 -->
---
## <b>Ola Infrastructure Overview</b>

* Hundreds of micro-services
* 100k requests per second

<!-- Slide #5 -->
---
## <b>When did we start using it?</b>

* We found managing ELK clusters require are maintenance intensive.
* We were revamping our infra and centralized logging was a basic requirement.

<!-- Slide #6 -->
---
# But why Graylog?

<!-- Slide #7 -->
---
## <b>Great UI, Best for viewing Logs</b>

<!-- Slide #8 -->
---
## <b>Several input & output options</b>

<img src="images/graylog-inputs.png" width="100%">

<!-- Slide #9 -->
---
## <b>Easy manageability of elasticsearch indexes</b>

<img src="images/graylog-indices.png" width="100%">


<!-- Slide #10 -->
---
## <b>Realtime log analysis and alerts</b>

<img src="images/graylog-streams.png" width="100%">

<!-- Slide #11 -->
---
## <b>Dashboard</b>

<!-- Slide #12 -->
---
## <b>How the pipeline looks?</b>

<img src="images/pipeline-basic.png" width="100%">

<!-- Slide #13 -->
---
## <b>What does each component do?</b>

<img src="images/pipeline-with-description.png" width="100%">

<!-- Slide #14 -->
---
# Problems & Learnings

<!-- Slide #15 -->
---
## <b>#1 Huge Lag for Application logs in Graylog UI</b>

<img src="images/fluentd-consumer-problem.png" width="100%">

<!-- Slide #15 -->
---
## <b>#1 Send gelf formatted messages to Kafka for native graylog support</b>

<img src="images/fluentd-consumer-solution.png" width="100%">

<!-- Slide #16 -->
---
## <b>#2 Docker service crash due to Fluentd log driver</b>

<img src="images/docker-crash.png" width="100%">

<!-- Slide #17 -->
---
## <b>#3 Exceptions in Graylog server due to 3 MB log messages</b>

<img src="images/huge-log-message-problem.png" width="100%">

<!-- Slide #18 -->
---
## <b>#3 Truncate log messages before sending to kafka</b>

<img src="images/huge-log-message-solution.png" width="100%">

<!-- Slide #19 -->
---
## <b>#4 Inconsistent schema problem</b>

<img src="images/inconsistent-schema-problem.png" width="100%">

<!-- Slide #20 -->
---
## <b>#4 Convert everything to string at source</b>

<img src="images/inconsistent-schema-solution.png" width="100%">

<!-- Slide #20 -->
---
## <b>#5 Journal Utilisation too high, uncommitted messages deleted from journal</b>

<img src="images/journal-utilisation-problem.png" width="100%">

<!-- Slide #20 -->
---
## <b>#5 Final setting - disable buffers and journal</b>

<img src="images/journal-utilisation-solution.png" width="100%">

<!-- Slide #21 -->
---
## <b>#6 Missing logs due to slow fluentd kafka plugin</b>

<img src="images/missing-logs-problem.png" width="100%">

<!-- Slide #22 -->
---
## <b>#6 Heka is superfast, 10x less CPU, 5x less memory</b>

<img src="images/missing-logs-problem.png" width="100%">

<!-- Slide #23 -->
---
## <b>Who all loved it?</b>

* Developers
* Devops
* Management

<!-- Slide #24 -->
---
# Questions?

<!-- Slide #25 -->
---
# Thank You :)
