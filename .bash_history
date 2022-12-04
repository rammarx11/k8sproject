clear
aws configure
clear
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
export AWS_ACCESS_KEY_ID=AKIASDXT2SIN3K7OPK3U
export AWS_SECRET_ACCESS_KEY=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
ssh-keygen 
export NAME=ram.k8s.local
export KOPS_STATE_STORE=s3://03k8sbucket
kops create cluster --zones ap-south-1a ${NAME}
kops get cluster
kops edit ig --name=ram.k8s.local nodes-ap-south-1a
kops update cluster --name ram.k8s.local --yes
kops validate cluster
kubectl get pods
clear
kops validate cluster
kops export kubecfg --admin
kops validate cluster
kubectl get pods
kubectl get nodes
clear
ls
clear
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod +x get_helm.sh
./get_helm.sh
helm
clear
ls
clear
kubectl get nodes
kubectl get pods
helm repo list
helm list --all-namespaces
clear
ls
helm create test
ls
cd test
ls
cd templates
ls
cat deployment.yaml
clear
ls
cd ..
clear
ls
tree
helm tree
clear
tree
clear
ls
cd ..
ls
exit
pwd
cd..
cd ..
exit
ls
cd /.
ls
cd /root/test
ls
clear
exi
exit
clear
ls
ls -la
clear
test
ls
where is test
clear
helm create myproject
ls
pwd
exit
clear
ls
pwd
exit
clear
kubectl get all
hel install example ./myproject/ --set service-type=Nodeport
helm install example ./myproject/ --set service-type=Nodeport
helm install marx ./myproject/ --set service-type=Nodeport
helm list
kubectl get all
clear
helm list
helm uninstall example
helm uninstall marx
helm list
kubectl get all
clear
mkdir dockerfile
ls
rm -f dockerfile
rm dockerfile
rm -d dockerfile
clear
ls
vi dockerfile
ls
docker build -t 
docker build .
yum install docker.io
yum install docker
ls
systemctl start docker
clear
ls
docker build .
ls
docker images
docker rmi busybox
clear
docker images
clear
mkdir app
touch indx.html
ls
rm -f indx.html
clear
ls
cd app
ls
vi index.html
docker build .
clear
ls
cd ..
clear
ls
docker build .
clear
docker images
docker rmi c66ce490f3ed 9d5226e6ce3f
clear
docker images
clear
docker build -t hello-world .
docker images
docker run -p 80:8005 hello-world
clear
ls
clear
ls
helm lint ./myproject/
helm install --dry-run --debug ./myproject/ --generate -name
helm install --dry-run --debug ./myproject/ --generate-name
helm install example ./mychart/ --set service-type=Nodeport
helm install example ./myproject/ --set service-type=Nodeport
helm list
kubectl get all
clear
kubectl get service
kubectl get pods
helm install example ./myproject/ --set service-type= Nodeport
helm install example ./myproject/ --set service-type=Nodeport
clear
kubectl get all
clear
ls
helm list
helm uninstall test
clear
ls
cd hello-world
ls
vi values.yaml
cd ..
clear
ls
helm lint ./# Default values for myproject.
# This is a YAML-formatted file.
# Declare variables to be passed into your templates.
replicaCount: 1
image:
  repository: rammarx/hello
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: latest
imagePullSecrets: []
nameOverride: ""
fullnameOverride: ""
serviceAccount:
  # Specifies whether a service account should be created
  create: true
  # Annotations to add to the service account
  annotations: {}
  # The name of the service account to use.
  # If not set and create is true, a name is generated using the fullname template
  name: ""
podAnnotations: {}
podSecurityContext: {}
  # fsGroup: 2000
securityContext: {}
  # capabilities:
  #   drop:
  #   - ALL
  # readOnlyRootFilesystem: true
  # runAsNonRoot: true
  # runAsUser: 1000
service:
  name: hello-world
  type: Clusterip
  port: ""
ingress:
  enabled: false
  className: ""
  annotations: {}
    # kubernetes.io/ingress.class: nginx
    # kubernetes.io/tls-acme: "true"
  hosts:
    - host: chart-example.local
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: []
  #  - secretName: chart-example-tls
  #    hosts:
  #      - chart-example.local
resources: {}
  # We usually recommend not to specify default resources and to leave this as a conscious
  # choice for the user. This also increases chances charts run on environments with little
  # resources, such as Minikube. If you do want to specify resources, uncomment the following
  # lines, adjust them as necessary, and remove the curly braces after 'resources:'.
  # limits:
  #   cpu: 100m
  #   memory: 128Mi
  # requests:
  #   cpu: 100m
  #   memory: 128Mi
autoscaling:
  enabled: false
  minReplicas: 1
  maxReplicas: 100
  targetCPUUtilizationPercentage: 80
  # targetMemoryUtilizationPercentage: 80
nodeSelector: {}
tolerations: []
affinity: {}
clear
ls
helm lint ./hello-world/
helm install --dry-run --debug ./hello-world/ --generate-name
helm install test ./hello-world/ --set service-type=Nodeport
clear
hel list
helm list
helm uninstall test
clear
ls
rm -f hello-world
rm -d hello-world
helm create test
clear
ls
cd test
ls
vi values.yaml
cd ..
ls
helm install ram test
helm list
helm uninstall ram
clear
ls
cd test
ls
vi values.yaml
cd ..
ls
helm install ram test
helm list
kubectl get service
clear
ls
helm list
helm uninstall ram
clear
helm list
clear
ls
helm create marx
clear
ls
cd marx
ls
vi values.yaml
cd templates
ls
vi deployment.yaml
vi service.yaml
cd ..
ls
cd ..
clear
ls
helm install ./marx --dry-run --generate-name
ls 
cd marx
ls
cd templates
ls
vi service.yaml
cd ..
ls
vi values.yaml
cd ..
clear
ls
helm lint ./marx/
ls
cd marx
ls
vi values.yaml
ls
cd ..
ls
cd marx
ls
cd templates
ls
vi service.yaml
cd ..
ls
cd ..
clear
ls
helm lint ./marx/
ls
cd marx
ls
cd templates
ls
vi service.yaml
cd ..
clear
ls
helm lint ./marx/
ls
cd marx
ls
cd templates
ls
vi service.yaml
cd ..
ls
cd ..
clear
ls
helm lint ./marx/
ls
cd hello-world
ls
cd templates
ls
vi service.yaml
cd ..
ls
cd ..
ls
cd marx
ls
cd templates
ls
vi service.yaml
cd ..
clear
ls
helm lint ./marx/
cd marx
ls
cd templates
ls
vi service.yaml
cd ..
ls
helm lint ./marx/
cd marx
ls
cd templates
ls
vi deployment.yaml
vi service.yaml
ls
cd ..
clear
ls
helm lint ./marx/
cd clear
ls
clear
ls
vi dockerfile
cls
clear
ls
cd marx
ls
vi Chart.yaml
vi values.yaml
cd templates
ls
vi deployment.yaml
vi service.yaml
cd ..
clear
ls
helm lint ./marx/
cd marx
ls
rm -f 1
cd templates
ls
cd tests
ls
vi test-connection.yaml
rm -f test-connection.yaml
cd ..
ls
rm -f tests
rm -d tests
clear
ls
cd ..
clear
ls
helm lint ./marx/
cd marx
ls
cd templates
ls\
clear
ls
rm -f _helpers.tpl
rm -f hpa.yaml
rm -f ingress.yaml
rm -f serviceaccount.yaml
ls
clear
cd ..
ls
helm lint ./marx/
cd marx
ls
cd templates
ls
rm -f NOTES.txt
clear
cd ..
ls
cd ..
ls
clear
helm lint ./marx/
ls
cd marx
ls
vi values.yaml
cd ..
ls
helm lint marx
helm install ./marx/ --dry-run --generate-name
helm install ./marx/ --generate-name
clear
helm list
kubectl get all
kubectl get pods
docker login
docker status 
docker ps
systemctl start docker
clear
docker ps
docker images
kubctl get pods
kubectl get pods
kubectl clear
docker service
clear
kubectl get service
kubectl get pods
ls
cd hello-world
ls
cd values.yaml
vi values.yaml
cd templates
ls
rm -f _helpers.tpl hpa.yaml ingress.yaml NOTES.txt serviceaccount.yaml 
ls
cd tests
ls
rm -f test-connection.yaml
cd ..
clear
ls
rm -f tests
rm -d tests
clear
ls
vi deployment.yaml
vi service.yaml
cd ..
ls
vi values.yaml
cd ..
ls
helm lint ./hello-world/
ls
cd hello-world
ls
cd templates
ls
vi deployment.yaml
cd ..
clear
ls
helm lint ./hello-world/
cd hello-world
ls
cd templates
ls
vi deployment.yaml
cd ..
clear
ls
helm lint ./hello-world/
helm install ./hello-world/ --dry-run --generate-name
kubectl get namespaces
kubectl get pods 
kubectl get pods --default
kubectl get all
clear
kubectl get pods --namespace=default
kubectl delete pod hello-deployment-7db849b46c-4m8th hello-deployment-7db849b46c-c5st2 hello-deployment-7db849b46c-jrwq2
kubectl get service
kubectl delete service app-server-clusterip-service
clear
kubectl get pods
kubectl get service
kubectl delete pods hello-deployment-7db849b46c-fddm8 hello-deployment-7db849b46c-p5bmz hello-deployment-7db849b46c-p6zq5
kubectl get pods
kubectl get service
clear
kubectl get deployment
kubectl delete deployment hello-deployment
kubectl get pods
kubectl get service
clear
ls
helm install ./hello-world/ --dry-run --generate-name
helm install./hello-world/ --generate-name
helm install ./hello-world/ --generate-name
kubectl get pods
kubectl get service
kubectl get pods
kubectl get service
clear
kubectl get pods
kubectl get service
clear
dockerfile
clear
ls
vi dockerfile
docker build myproject .
docker build -t myproject .
docker ps
docker images
docker rmi c551bf4a4f3d b55d7b42b462 b55d7b42b462 b55d7b42b462 9d5226e6ce3f 850f8694d221
clear
docker images
docker rmi -f b55d7b42b462 b55d7b42b462 b55d7b42b462 9d5226e6ce3f
clear
docker images
clear
exit
cp /home/ec2-user/k8_project .
cp -R /home/ec2-user/k8_project .
ls
cd k8_project
ls
cd ..
ls
rm -f dockerfile
clear
ls
cd k8_project
ls
docker build -t myproject .
clear
docker images
docker run -itd d133f55deb7e cont1
docker ps
docker ps -a
docker rm -f eb737b801e2f c8519aa49f7d 9b1b8fa46c46
clear
docker ps -a
docker ps
clear
docker images
docker run -itd --name cont1 d133f55deb7e
docker ps 
docker login
docker tag myproject rammarx/myproject:latest
ls
docker push rammarx/myproject:latest
clear
docker ps
kubectl get pods
kubectl get service
kubecl get deployment
kubectl get deployment
kubectl delete deployment hello-deployment
kubectl get pods
kubectl get service
clear
kubectl get service
kubectl get pods
kubectl delete service app-server-clusterip-service
ls
cd..
cd ..
ls
clear
docker ps
clear
ls
cd myproject
ls
vi values.yaml
cd..
clear
cd ..
clear
ls
cd hello-world
ls
vi values.yaml
cd templates
ls
vi deployment.yaml
cd ..
clear
ls
helm lint ./hello-world/
helm install ./hello-world/ --dry-run --generate-name
helm install ./hello-world/ --generate-name
clear
helm list
kubectl get pods
kubectl get service
clear
sudo apt update
yum update
clear
sudo yum install openjdk-11-jre
udo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
