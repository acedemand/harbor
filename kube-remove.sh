# create pv & pvc
kubectl delete -f make/kubernetes/pv/log.pv.yaml
kubectl delete -f make/kubernetes/pv/registry.pv.yaml
kubectl delete -f make/kubernetes/pv/storage.pv.yaml
kubectl delete -f make/kubernetes/pv/log.pvc.yaml
kubectl delete -f make/kubernetes/pv/registry.pvc.yaml
kubectl delete -f make/kubernetes/pv/storage.pvc.yaml

# create config map
kubectl delete -f make/kubernetes/jobservice/jobservice.cm.yaml
kubectl delete -f make/kubernetes/mysql/mysql.cm.yaml
kubectl delete -f make/kubernetes/registry/registry.cm.yaml
kubectl delete -f make/kubernetes/ui/ui.cm.yaml
kubectl delete -f make/kubernetes/adminserver/adminserver.cm.yaml

# create service
kubectl delete -f make/kubernetes/jobservice/jobservice.svc.yaml
kubectl delete -f make/kubernetes/mysql/mysql.svc.yaml
kubectl delete -f make/kubernetes/registry/registry.svc.yaml
kubectl delete -f make/kubernetes/ui/ui.svc.yaml
kubectl delete -f make/kubernetes/adminserver/adminserver.svc.yaml

# create k8s deployment
kubectl delete -f make/kubernetes/registry/registry.deploy.yaml
kubectl delete -f make/kubernetes/mysql/mysql.deploy.yaml
kubectl delete -f make/kubernetes/jobservice/jobservice.deploy.yaml
kubectl delete -f make/kubernetes/ui/ui.deploy.yaml
kubectl delete -f make/kubernetes/adminserver/adminserver.deploy.yaml

# create k8s ingress
kubectl delete -f make/kubernetes/ingress.yaml

kubectl delete secret harbor-tls
