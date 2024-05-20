# RabbitMQ Cluster with Consul

Dockerized setup for creating a RabbitMQ cluster with consul. It includes all the necessary configurations to easily deploy a RabbitMQ cluster using Docker containers.

## Getting started

1. Clone this repository:
```bash
git clone https://github.com/buraketmen/rabbitmq-cluster.git
cd rabbitmq-cluster
```

2. Build your own image, and define `RABBITMQ_USERNAME` and `RABBITMQ_PASSWORD` envs. (Alternatively, you can use my quorum image or its Dockerfile to handle MQTT/STOMP/AMQP default users by single env variable [Source](https://github.com/buraketmen/rabbitmq-mqtt-quorum))
```bash
docker build -t <your-image> .
```
3. Initialize Docker Swarm (if not already initialized)
```bash
docker swarm init
```

4. Deploy the RabbitMQ Stack
```bash
docker stack deploy -c docker-compose.yml rabbitmq-cluster
```

# Usage
- Access the RabbitMQ Management UI at http://localhost:15672
- Default username and password will be your `RABBITMQ_USERNAME` and `RABBITMQ_PASSWORD` envs. You can change it from `docker-compose.yml` file easily.
