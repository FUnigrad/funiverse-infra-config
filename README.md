# Infrastructure Configuration

## Cloud Deployment

TBD

## On-premise Deployment
1. Prerequired
- Install [minikube](https://kubernetes.io/vi/docs/tasks/tools/install-minikube/)
- Install [kubectl](https://kubernetes.io/vi/docs/tasks/tools/install-kubectl/) if it is not installed. By default when install docker desktop, kubectl will be installed as well. Check by:
    ```cmd
    kubectl version --client --short
    ```
2. Apply appropriate configure file:
    ```cmd
    kubectl apply -f <folder or filename>
    ```
    **Example**: Deploy whole system on `dev` enviroment:
    ```cmd
    kubeclt apply -f config/dev
    ```
3. After all, remove all created resouces:
    ```cmd
    kubectl delete -f <file of folder in create step>
    ```
