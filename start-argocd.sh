dockerd &
minikube start --force --driver=docker

kubectl get svc -n argocd
echo -e "\e[44m login this url with admin/U-6jrfPOJZlCRsAL\e[49m"
echo -e "\e[44m https://localhost:8080/\e[49m"
kubectl port-forward -n argocd svc/argocd-server 8080:443

minikube stop
