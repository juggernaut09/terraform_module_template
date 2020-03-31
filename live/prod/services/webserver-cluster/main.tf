provider "aws" {
    region = "us-east-2"
}

module "webserver_cluster" {
    source = "git@github.com:venkattejaRaavi/modules.git//services/webserver-cluster?ref=v0.0.1"
    cluster_name = "webservers-prod"
    instance_type = "t2.micro"
    min_size = 2
    max_size = 10
}


resource "aws_autoscaling_schedule" "scale_out_business_hours" {
    scheduled_action_name = "scale_out_during_businesss_hours"
    min_size = 2
    max_size = 10
    desired_capcity = 10
    recurrence = "0 9 * * *"
    autoscaling_group_name = module.webserver_cluster.asg_name
}


resource "aws_autoscaling_schedule" "scale_in_business_hours" {
    scheduled_action_name = "scale_in_at_night"
    min_size = 2
    max_size = 10
    desired_capcity = 2
    recurrence = "0 17 * * *"
    autoscaling_group_name = module.webserver_cluster.asg_name
}

