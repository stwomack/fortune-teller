#!/usr/bin/env bash

cf cs p-mysql 100mb-dev fortunes-db
cf cs p-config-server standard womack-config-server -c '{"git": { "uri": "https://github.com/spring-cloud-samples/fortune-teller", "searchPaths": "configuration" } }'
cf cs p-service-registry standard womack-service-registry
cf cs p-circuit-breaker-dashboard standard womack-circuit-breaker-dashboard
