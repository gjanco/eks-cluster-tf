This repo was cloned from a companion repo to the [Provision an EKS Cluster tutorial](https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks), containing
Terraform configuration files to provision an EKS cluster on AWS.

## Steps to spin up this cluster
- Log into AWS CLI for the environment you want to run this against
- run `terraform init`
- run `terraform apply`

## Change to this cluster's context
`aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)`

**Now you can start using this cluster**

### Optionally: deploy OTEL Demo to this cluster:
Adjust values.yaml to point to your pipeline source and then run:
`helm install my-otel-demo open-telemetry/opentelemetry-demo --values values.yaml`
