FROM rabbitmq:3.12-management
USER root
ARG DEBIAN_FRONTEND=noninteractive
COPY config/rabbitmq /etc/rabbitmq/
RUN rabbitmq-plugins enable rabbitmq_management \
	rabbitmq_peer_discovery_consul \
	rabbitmq_federation rabbitmq_federation_management \
    rabbitmq_shovel rabbitmq_shovel_management

CMD ["rabbitmq-server"]