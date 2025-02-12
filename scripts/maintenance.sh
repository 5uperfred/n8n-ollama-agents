#!/bin/bash
apt update && apt upgrade -y
docker system prune -af --volumes
docker-compose up n8n-backup
docker-compose down
docker-compose up -d
