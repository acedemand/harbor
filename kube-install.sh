# create pv & pvc
#kubectl apply -f make/kubernetes/pv/log.pv.yaml
#kubectl apply -f make/kubernetes/pv/registry.pv.yaml
#kubectl apply -f make/kubernetes/pv/storage.pv.yaml
#kubectl apply -f make/kubernetes/pv/log.pvc.yaml
#kubectl apply -f make/kubernetes/pv/registry.pvc.yaml
#kubectl apply -f make/kubernetes/pv/storage.pvc.yaml

# create config map
kubectl apply -f make/kubernetes/jobservice/jobservice.cm.yaml
kubectl apply -f make/kubernetes/mysql/mysql.cm.yaml
kubectl apply -f make/kubernetes/registry/registry.cm.yaml
kubectl apply -f make/kubernetes/ui/ui.cm.yaml
kubectl apply -f make/kubernetes/adminserver/adminserver.cm.yaml

# create service
kubectl apply -f make/kubernetes/jobservice/jobservice.svc.yaml
kubectl apply -f make/kubernetes/mysql/mysql.svc.yaml
kubectl apply -f make/kubernetes/registry/registry.svc.yaml
kubectl apply -f make/kubernetes/ui/ui.svc.yaml
kubectl apply -f make/kubernetes/adminserver/adminserver.svc.yaml

# create k8s deployment
kubectl apply -f make/kubernetes/registry/registry.deploy.yaml
kubectl apply -f make/kubernetes/mysql/mysql.deploy.yaml
kubectl apply -f make/kubernetes/jobservice/jobservice.deploy.yaml
kubectl apply -f make/kubernetes/ui/ui.deploy.yaml
kubectl apply -f make/kubernetes/adminserver/adminserver.deploy.yaml

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /tmp/tls.key -out /tmp/tls.crt -subj "/CN=harbor.pamir.com/O=pamir"

kubectl create secret generic harbor-tls --from-file=/tmp/tls.crt --from-file=/tmp/tls.key


# create k8s ingress
kubectl apply -f make/kubernetes/ingress.yaml
