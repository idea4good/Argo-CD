dockerd &
minikube start --force --driver=docker

secret=`kubectl get secret argocd-initial-admin-secret -n argocd -o yaml | grep password`
password_base64=${secret#*:}
password=`echo $password_base64 | base64 --decode`

echo -e "\e[44m Login Argo CD(https://localhost:8080/) with admin/$password\e[49m"
kubectl port-forward -n argocd svc/argocd-server 8080:443 &

echo "***************"

kubectl apply -f application.yaml
echo -e "\e[44m Login myapp(http://localhost:3200/)\e[49m"
kubectl port-forward -n myapp svc/myapp-service 3200:3200

minikube stop
pkill dockerd
