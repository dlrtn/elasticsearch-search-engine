## 1.1.1
  - Added missed dependency (elastic-app-search) to the gemspec, fixes issue [#17](https://github.com/logstash-plugins/logstash-output-elastic_app_search/issues/17)

## 1.1.0
  - Switched AppSearch client library from Java to Ruby [#12](https://github.com/logstash-plugins/logstash-output-elastic_app_search/issues/12)
  - Covered with integration tests and dockerized local AppSearch server instance.

## 1.0.0
  - Added support for On Premise installations of Elastic App Search
  - Updated java client to 0.4.1

## 1.0.0.beta1
  - Changed documentation to correct required fields and other information [#2](https://github.com/logstash-plugins/logstash-output-elastic_app_search/pull/2)
  - Added check for correct host, engine and api_key during register [#2](https://github.com/logstash-plugins/logstash-output-elastic_app_search/pull/2)
  - Changed config `store_timestamp` to `timestamp_destination` [#2](https://github.com/logstash-plugins/logstash-output-elastic_app_search/pull/2)

## 0.1.0
  - Initial version
