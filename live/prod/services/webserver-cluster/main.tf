provider "aws" {
    region = "us-east-2"
}

module "webserver_cluster" {
    source = "git@github.com:venkattejaRaavi/modules.git//services/webserver-cluster?ref=v0.0.3"
    cluster_name = "webservers-prod"
    instance_type = "t2.micro"
    min_size = 2
    max_size = 10
    enable_autoscaling = true
}


