variable "cluster_name" {
  type    = string
  default = "demo-cluster"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "server_instance_type" {
  type    = string
  default = "t3a.medium"
}

variable "agent_instance_type" {
  type    = string
  default = "t3a.large"
}

variable "ami_owner" {
  type    = string
  default = "013907871322" #SUSE
}

variable "ami_filter_name" {
  type    = string
  default = "suse-sles-15-sp3
}

variable "rke2_version" {
  type    = string
  default = "v1.22.5+rke2r1"
}

variable "tags" {
  type    = map
  default = {
    "terraform" = "true",
    "env"       = "cloud-enabled",
  }
}

variable "install_rancher" {
  description = "Install Rancher to deployed cluster"
  type        = bool
  default     = false
}

variable "rancher_url" {
  description = "Rancher Access URL. Defaults to loadbalancer url."
  type        = string
  default     = ""
}

