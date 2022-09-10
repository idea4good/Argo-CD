dockerd &
minikube start --force --driver=docker
kubectl apply -f application.yaml

echo -e "\e[44m Login Argo CD(https://localhost:8080/) with admin/U-6jrfPOJZlCRsAL\e[49m"
kubectl port-forward -n argocd svc/argocd-server 8080:443 &

echo "***************"

echo -e "\e[44m Login myapp(http://localhost:3200/)\e[49m"
kubectl port-forward -n myapp svc/myapp-service 3200:3200

minikube stop
