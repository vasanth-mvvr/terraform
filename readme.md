# ** Terraform **
# The first thing to do is install terraform and place the .exe file in the environment variables
# The next step is install the amazon CLI 
# ** Creation of ec2-instance **
# Create IAM Identity accesss management and take the key credentials use it in the aws confing CLI
# 1) set the provider from the registry that is aws in my case
# 2) set the security group 
# 3) Add the ec2-instance

# In the .tf file initiate the command
```
terraform init 
```
# Note: Only for the first time the terraform needs to be initiated
# Terraform plan to see any changes that are required for your infrastructure. 
```
terraform plan
```
# Terraform apply for is used to create the terraform plan does not create
```
terraform apply -auto-approve
```
# To destroy 
```
terraform destroy -auto-approve
```

# If we don't want the default values to be used then we can pass it in the .tfvars 
# If we want to pass in the CLI we can make use of command
```
terraform plan -var="variable_name=value"
terraform plan -var="instance_type=t3.small"
```
# If we keep the other name for the file teraform.tfvars then we need to use command
```
terraform apply -var-file="<file-name.tfvars>"
```
# Environment variables
```
export TF_VAR_<variable name>= <value>
export TF_VAR_instance_type = t3.large 
```