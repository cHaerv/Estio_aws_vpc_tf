# Terraform AWS for training example

this project is an IAC version of a task given to create some resources in AWS

## Project setup

* firstly install terraform on your machine if you havent already. https://developer.hashicorp.com/terraform/install
* secondly run the terraform init command
```
terraform init
```

* Create a terraform.tfvars file with your IAM credentials and secret key to allow terraform to connect with your AWS subscription.

## Deployment and destroy
* finally tweak the resources or deploy them as described running the following commands

``` 
terraform plan
```

``` 
terraform apply
```
followed by entering yes when prompted

* to destroy the created resource group and resources run the following command
```
terraform destroy
```
