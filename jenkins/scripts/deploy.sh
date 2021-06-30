cd terraform-files/k8smodels

terraform init
terraform apply -auto-approve

cd -

az aks get-credentials --resource-group k8s-test --name k8s-test-cluster
kubectl  apply -f ./k8s_files 
sleep 40
kubectl get pods
kubectl get services