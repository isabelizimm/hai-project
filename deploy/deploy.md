# Instructions for deployment on OpenShift

These instructions show how to deploy various applications on [OpenShift](https://okd.io)
using the [command line client tool](https://docs.okd.io/latest/cli_reference/get_started_cli.html).

## Prerequisites

* A terminal shell with the OpenShift client tool (`oc`) available.

* An active login to an OpenShift project

### Kafka Python Emitter
To use Kafka to stream data to OpenShift, use the `kafka-app.py` viewable [here]('./kafka-app.py')

This application will simply take the lines from pt_info_cleaned.csv and then send the lines from that file to the topic and brokers specified through the environment variables.

* Launch the emitter using the following command

### Seldon Deploy

### Superset