#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <action> <service_name>"
    exit 1
fi

action="$1"
service_name="$2"

case "$action" in
    start)
        echo "Start $service_name service..."
        sudo systemctl start "$service_name"
        ;;
    stop)
        echo "Stop $service_name service..."
        sudo systemctl stop "$service_name"
        ;;
    status)
        echo "status $service_name service..."
        sudo systemctl status "$service_name"
        ;;
    *)
        echo "Unknown action. Please specify 'start', 'stop', or 'status'."
        exit 1
        ;;
esac
