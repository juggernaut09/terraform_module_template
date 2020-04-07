provider "aws" {
    region = "us-east-2"
}

module "webserver_cluster" {
    source = "git@github.com:venkattejaRaavi/modules.git//services/webserver-cluster?ref=v0.0.2"
    cluster_name = "webservers-stage"
    instance_type = "t2.micro"
    min_number = 2
    max_number = 5
    #enable_autoscaling = false /*Uncomment this statement when you are importing module from v0.0.3*/
}