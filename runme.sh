#!/bin/bash

# Export env variables
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && \
sh /opt/nifi/bin/nifi-env.sh && \
# Run Nifi
sh /opt/nifi/bin/nifi.sh set-single-user-credentials admin admin && \
# Tail Logs
tail -f /opt/nifi/logs/*.log


