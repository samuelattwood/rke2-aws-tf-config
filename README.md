# rke2-aws-tf-config

This repository provides a demo Terraform configuration for deploying Rancher on an autoscaling AWS EC2 cluster using Rancher RKE2 as the underlying engine. The configuration supports both SUSE Linux Enterprise 15 and RedHat Enterprise Linux 8.

This deployment leverages a fork of modules provided by [Rancher Federal](https://github.com/rancherfederal/rke2-aws-tf)

## Usage

```bash
git clone https://github.com/samuelattwood/rke2-aws-tf-config.git
cd rke2-aws-tf-config/
```

Update values from variables.tf as needed. Then deploy with:

```bash
export AWS_ACCESS_KEY_ID="yourawsaccesskey"
export AWS_SECRET_ACCESS_KEY="yourawssecretkey"

terraform init
terraform apply
```

Upon completion of the deployment, allow a few additional minutes for the cluster to finalize initialization.

Terraform will print two values to console `lb_url` and `rancher_bootstrap_password`.

`lb_url` is the loadbalancer ingress url for reaching the Rancher UI.

`rancher_bootstrap_password` is the default password set for the Rancher admin user.

`rancher_bootstrap_password` is marked as 'sensitive' and may be read with:
```bash
terraform output rancher_bootstrap_password
```
