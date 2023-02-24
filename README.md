# Final_Project
Overview:

![pro](https://user-images.githubusercontent.com/78254667/221214297-9f08ddbe-49cf-47d7-bdef-4879d7895e70.png)

![pr](https://user-images.githubusercontent.com/78254667/221214305-aa88e5ab-f928-4df5-894b-23af6b7c6da0.png)

Tools:
1. Terraform
2. Doker
3. Kubernetes
4. Jenkins
5. Helm
6. Google Cloud Provider (gcp)

-To create infrastructure by using Terraform_files , you must write this command in a terminal:
1. terraform init
2. terrafrom apply

![i1](https://user-images.githubusercontent.com/78254667/221216127-9028feb5-6930-43cd-ab9f-842f6908de8d.png)

- Build Dockerfile and push image to GCR:
1. docker build . -t gcr.io/project_id/python-img:v3.0
2. docker push gcr.io/project_id/python-img:v3.0 

![i3](https://user-images.githubusercontent.com/78254667/221218520-5a1bbf35-7463-4e6c-9500-4725306f1d5a.png)
![photo_2023-02-24_17-26-51](https://user-images.githubusercontent.com/78254667/221218533-56f8cf83-9034-4df5-94f5-0fd087fda1b7.jpg)

- connect to the cluster :
gcloud compute ssh --project=zahra-project41853 --zone=us-central1-a private-instance

- get clone my repo:
git clone https://github.com/zahraa98-95/final_project.git

- create yaml_files from helm_files :
kubectl apply -f ./final_project/helm_files/templates

-get your external ip (service): 
kubectl get svc -n jenkins
- get password by used:
1. kubectl exec --stdin --tty jenkins-fd5fdf49f-6qgr2 -n jenkins -- /bin/bash
2. cat /var/jenkins_home/secrets/initialAdminPassword

![i13](https://user-images.githubusercontent.com/78254667/221223145-b2ffb1c6-40ad-4bec-8131-9670bebf0e58.png)




