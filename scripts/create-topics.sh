echo "Waiting for Kafka to come online..."

cub kafka-ready -b kafka:9092 1 20

# create the users topic
kafka-topics \
  --bootstrap-server kafka:9092 \
  --topic sentences \
  --replication-factor 1 \
  --partitions 1 \
  --create

kafka-topics \
  --bootstrap-server kafka:9092 \
  --topic word-count \
  --replication-factor 1 \
  --partitions 1 \
  --create

sleep infinity
