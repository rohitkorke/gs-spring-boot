#!/bin/bash

echo "🔄 Building Docker Image..."
docker build -t springboot-app .

echo "🧹 Cleaning old container..."
docker stop springboot-container || true
docker rm springboot-container || true

echo "🚀 Running new container..."
docker run -d -p 9090:8080 --name springboot-container springboot-app

echo "✅ Deployment Done!"
echo "🌐 Open in browser: http://<65.1.106.18>:9090"
