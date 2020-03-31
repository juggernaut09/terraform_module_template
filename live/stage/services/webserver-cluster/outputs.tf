output "clb_dns_name" {
    value = module.webserver_cluster.clb_dns_name
    description = "The dns name of the CLB launched in webserver_cluster module"
}