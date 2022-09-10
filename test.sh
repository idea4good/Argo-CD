set -v
minikube status

kubectl get namespaces

kubectl get svc -n argocd

kubectl get pods -n argocd

kubectl get svc -n myapp

kubectl get pods -n myapp

# test docker container
# docker container run --name myapp -d -p 3200:80 manojnair/myapp:v1
# echo "login myapp(http://localhost:3200/)"
