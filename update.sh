#!/bin/bash

aws ecs register-task-definition --cli-input-json file://$(pwd)/task-definition.json
aws ecs register-task-definition --cli-input-json file://$(pwd)/task-definition-continuous.json
aws ecs update-service --service service-discovery --task-definition service-discovery --cluster development
aws ecs update-service --service service-discovery --task-definition service-discovery --cluster development-workers
