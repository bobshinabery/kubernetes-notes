### Validity 

# auth to k8s cluster with aquaduck
  $(aquaduck auth kube workload2.k8s.tst.returnpath.net -p eo)



### docker

  # version     Show the Docker version information 

  # ps          List containers  
  # create      Create a new container
  # logs        Fetch the logs of a container
  # rm          Remove one or more containers

  # run         Run a command in a new container
  # exec        Run a command in a running container
  
  # start       Start one or more stopped containers
  # stop        Stop one or more running containers
  # restart     Restart one or more containers
  # kill        Kill one or more running containers

  # images      List images
  # pull        Pull an image or a repository from a registry
  # push        Push an image or a repository to a registry
  # rmi         Remove one or more images
  # build       Build an image from a Dockerfilesudo 




### replicasets

  kubectl create -f replicaset-definition.yml
  kubectl get replicaset
  kubectl delete replicaset myapp-replicaset
  kubectl replace -f replicaset-definition.yml
  kubectl scale replicaset --replicas=5 new-replica-set
  kubectl edit replicaset new-replica-set

  # deployments

  kubectl get all

kubectl get pods --selector app=App1


### Namespaces

  # default
  # kube-system
  # kube-public

  kubectl get pods --namespace=kube-system
  kubectl get pods --namespace=default
  kubectl get pods --all-namespaces
  kubectl create -f namespace-dev.yml
  kubectl create namespace dev
  kubectl config set-context $(kubectl config current-context) --namespace=prod



### DNS
  # servicename.namespace.service.cluster.local
  # (db-service.dev.svc.cluster.local)



### Services

  kubectl create -f service-def.yml
  kubectl get services



### Oneliners
  #Use kubectl run instead of creating a yaml file
  # https://kubernetes.io/docs/reference/kubectl/conventions/

#create a pod
  kubectl run --image=nginx nginx

#create a deployment
  kubectl create deployment --image=nginx nginx

#create a nodeport
  kubectl expose deployment nginx --port 80

#modify a deployment - will open a text editor with definition
  kubectl edit deployment nginx

#increase replicas in a deployment
  kubectl scale deployment nginx --replicas=5

#modify image of deployment
  kubectl set image deployment nginx nginx=nginx1.18

#Create an NGINX Pod
  kubectl run --generator=run-pod/v1 nginx --image=nginx

#Generate POD Manifest YAML file (-o yaml). Don't create it(--dry-run)
  kubectl run --generator=run-pod/v1 nginx --image=nginx --dry-run=client -o yaml

#Create a deployment
  kubectl create deployment --image=nginx nginx

# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run)
  kubectl create deployment --image=nginx nginx --dry-run=client -o yaml

# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run) with 4 Replicas (--replicas=4)
  kubectl create deployment --image=nginx nginx --dry-run=client -o yaml > nginx-deployment.yaml

# Save it to a file, make necessary changes to the file (for example, adding more replicas) and then create the deployment.

kubectl apply -f filename.yml


### taint and tolerance

kubectl taint nodes node-name key=value:taint effect
  # taint-effect  
  #   NoSchedule
  #   PreferNoSchedule
  #   NoExecute

kubectl taint nodes node1 app=blue:NoSchedule

kubectl describe node kubemaster | grep Taint

### NodeSelector
  # label node:
    kubectl label nodes <node-name> <label-key>=label-value>
    kubectl label nodes node-1 size=Large

