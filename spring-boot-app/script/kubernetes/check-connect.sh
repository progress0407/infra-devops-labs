while true; do \
  curl $(minikube ip):30000/actuator/health; \
  echo "" ; \
  sleep 0.5; \
done
