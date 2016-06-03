#!/bin/bash

aws ecs register-task-definition --cli-input-json file://$(pwd)/task-definition.json
aws ecs update-service --service service-discovery --task-definition service-discovery --cluster development
