# Instructions for deployment on OpenShift
These instructions show how to deploy various applications on [OpenShift](https://okd.io)
using the [command line client tool](https://docs.okd.io/latest/cli_reference/get_started_cli.html).

## Prerequisites

* A terminal shell with the OpenShift client tool (`oc`) available.

* An active login to an OpenShift project

## Recommended Workflow

1. Install Red Hat's AI-as-a-Service platform, Open Data Hub, using the instructions [here](https://opendatahub.io/docs/getting-started/quick-installation.html), when uploading YAML files in step X, use the YAML given below.
`YAML`

2. Run the script
`start up ODH`

3. Choose a route to see other OpenShift capabilities: either data storytelling with Superset or model serving with Seldon Core. Both of these integrations are automatically launched within the Open Data Hub. 

### To explore the data more in Superset

[Superset](apache-superset.io) is a visualization dashboard that connects with nearly any database in order to further explore the data or implement business intelligence techniques.

1. Create your PostgreSQL database within your OpenShift environment by following the commands in
`oc new-app \

-e POSTGRESQL_USER=mimic \ 

-e POSTGRESQL_DATABASE=mimc \ 

openshift/postgresql:9.6`

2. Connect PostgeSQL to Superset by
`connect`

3. Run sample commands such as:
`sample Superset dashboard`


### To look at model serving technqiues with Seldon

[Seldon-core](seldon.io) provides model serving by giving instantaneous predictions for models.
1. Launch Seldon core with `this`


BONUS: Kafka

Kafka Python Emitter

To use Kafka to stream data to OpenShift, use the `kafka-app.py` viewable [here]('./kafka/kafka-app.py')

This application will simply take the lines from pt_info_cleaned.csv and then send the lines from that file to the topic and brokers specified through the environment variables.

1. Launch the emitter using the following command
`oc new-app centos/python-36-centos7~https://gitlab.com/bones-brigade/kafka-python-emitter.git \

  -e KAFKA_BROKERS=kafka:9092 \
  
  -e KAFKA_TOPIC=odh-hai \
  
  -e KAFKA_TOPIC=odh-hai \
  
  -e SOURCE_URI=https://raw.githubusercontent.com/iionez/hai-project/master/data/processed/pt_info_clean.csv  \
  
  --name=kafka-emitter`
  
2. Launch the listener with the following command
`oc new-app centos/python-36-centos7~https://gitlab.com/bones-brigade/kafka-python-listener.git \

  -e KAFKA_BROKERS=kafka:9092 \
  
  -e KAFKA_TOPIC=odh-hai \
  
  --name=kafka-listener`
