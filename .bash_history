docker ps
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
chmod +x kind
sudo mv kubectl /usr/local/bin/
kubectl version --client
sudo mv kubectl /usr/local/bin/
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
chmod +x kind
ls kind 
sudo mv kind /usr/local/bin/
kubectl version --client
kind version
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
kubectl version --client
echo $PATH
ls -l /usr/local/kubectl
ls -l /usr/local/bin/kubectl
ls
sudo mv kubectl /usr/local/bin/kubectl
ls -l /usr/local/bin/kubectl
kubectl version
clear
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
chmod +x kind
sudo mv kind /usr/local/bin/
kind version
mkdir fastapi-redis-k8s
cd fastapi-redis-k8s
touch app.py
clear
sudo apt update
sudo apt upgrade
clear
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
clear
docker ps
sudo usermod -aG docker $USER
newgrp docker
clear
ls
touch app.py
vi app.py 
vi requirements.txt
touch Dockerfile
vi Dockerfile 
cat Dockerfile 
docker ps
docker build -t fast-api:latest .
clear
ls
cd fastapi-redis-k8s/
touch cluster.yaml
vi cluster.yaml 
kind version
kind create cluster --name fastapi-cluster --config ./cluster.yaml 
docker ps
kind load-image fast-api:latest --name fastapi-cluster
kind load-image fast-api:latest -name fastapi-cluster
kind load-image fast-api:latest -n fastapi-cluster
docker images
docker images | grepfast-api
docker images | grep fast-api
kind load docker-image fast-api:latest --name fastapi-cluster
kind get cluster
kind get clusters
kind get nodes
kind get nodes --name fastapi-cluster
kubecl get nodes
kubectl get nodes
clear
ls
cd fastapi-redis-k8s/
ls
touch redis-configmap.yaml
vi redis-configmap.yaml 
cat redis-configmap.yaml 
touch redis-secret.yaml
vi redis-secret.yaml 
cat redis-secret.yaml 
touch redis-pvc.yaml
vi redis-pvc.yaml 
clear
ls
cd fas
cd fastapi-redis-k8s/
ls
cat redis-secret.yaml 
cat redis-pvc.yaml 
vi redis-pvc.yaml 
cat redis-pvc.yaml 
clear
touch redis-deployments.yaml
vi redis-deployments.yaml 
clear
ls
cd fastapi-redis-k8s/
ls
cat redis-deployments.yaml 
vi redis-deployments.yaml 
clear
ls
cd fastapi-redis-k8s
ls
vi deployment.yaml
vi service.yaml
cd ..
ls
mkdir scripts
cd scripts/
vi startup.sh
ls
cd ..
ls
cd fastapi-redis-k8s/
ls
touch redis-service.yaml
vi redis-service.yaml 
ls
cd ..
clear
chmod +x scripts/startup.sh
ls
cd scripts/
ls
./startup.sh 
cd ..
./scripts/startup.sh
cat k8s/redis-configmap.yaml | grep kind
ls
cd fastapi-redis-k8s/
cat redis-configmap.yaml 
vi redis-configmap.yaml 
clear
ls
cat redis-configmap.yaml 
cat > redis-configmap.yaml << 'EOF'
apiVersion: v1
kind: ConfigMap
metadata:
  name: redis-cm
data:
  REDIS_HOST: "redis"
  REDIS_PORT: "6379"
EOF

cd ..
./scripts/startup.sh
clear
ls
cd fastapi-redis-k8s/
ls
cd ..
./scripts/startup.sh 
kubectl delete pvc redis-pvc --ignore-not-found=true
cd fastapi-redis-k8s/
cat redis-pvc.yaml 
vi redis-pvc.yaml 
cd ..
./scripts/startup.sh 
cd fastapi-redis-k8s/
vi redis-pvc.yaml 
cat redis-pvc.yaml 
kublectl apply -f ./redis-pvc.yaml 
kubectl apply -f ./redis-pvc.yaml 
kubectl get pvc
kubectl delete pvc redis-pvc --ignore-not-found=true
clear
rm redis-pvc.yaml
cat > redis-pvc.yaml << 'EOF'
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: redis-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
EOF

cd ..
cd scripts/
./startup.sh 
ls
cat startup.sh 
cd ..
cd fastapi-redis-k8s/
ls
cat redis-configmap.yaml 
clear
cd ..
ls
cd fastapi-redis-k8s/
ls
./scripts/startup.sh 
cd scripts/
cat startup.sh 
at startup.sh lsdcd ..
clear
ls
cd fastapi-redis-k8s/
ls
kind version
kubectl apply redis-configmap.yaml 
kubectl apply -f redis-configmap.yaml 
kubectl apply -f redis-secret.yaml 
kubectl apply -f redis-pvc.yaml 
kubectl apply -f redis-deployments.yaml 
cat redis-deployments.yaml 
vi redis-deployments.yaml 
kubectl apply -f redis-deployments.yaml 
kubectl apply -f redis-service.yaml 
kubectl get po
kubectl get svc
ls
cd scripts/
ls
vi startup.sh 
ls
vi test.sh
chmod +x test.sh
clear
./test.sh
clear
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl wait --namespace ingress-nginx   --for=condition=ready pod   --selector=app.kubernetes.io/component=controller   --timeout=180s
kubectl get pods -n ingress-nginx
clear
kubectl get pod -n ingres
kubectl get pods -n ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl get pods -n ingress-nginx
kubectl get po
top
clear
