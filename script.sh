kubectl apply -f env-configmap.yml
kubectl apply -f env-secrets.yml
kubectl apply -f aws-credentials.yml



kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl apply -f feed-deployment.yml
kubectl apply -f user-deployment.yml
kubectl apply -f frontend-deployment.yml
kubectl apply -f reverseproxy-deployment.yml