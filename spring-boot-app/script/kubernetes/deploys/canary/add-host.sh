# Centos HostName 등록
cat << EOF >> /etc/hosts
$(minikube ip) www.app.com
EOF
