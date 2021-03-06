ad-mapper {
  streams {
    application.id = "ad-mapper"
    bootstrap.servers = "${kafka_endpoint}"
    default.value.serde = "com.expedia.adaptivealerting.kafka.serde.MetricDataSerde"
    default.timestamp.extractor = "com.expedia.adaptivealerting.kafka.serde.MetricDataTimestampExtractor"
  }
  health.status.path = "/app/isHealthy"
  inbound-topic = "aa-metrics"
  outbound-topic = "mapped-metrics"
  model-service-uri-template = "${modelservice_uri_template}"
}
