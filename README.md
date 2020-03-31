# terraform_module_template
This terraform shows how to import remote modules.

Follow below file structure.

live.git
  └ stage
      └ vpc
      └ services
          └ frontend-app
          └ backend-app
      └ data-storage
          └ mysql
          └ redis
  └ prod
      └ vpc
      └ services
          └ frontend-app
          └ backend-app
      └ data-storage
          └ mysql
          └ redis
  └ mgmt
      └ vpc
      └ services
          └ bastion-host
          └ jenkins
  └ global
      └ iam
      └ s3modules.git
  └ data-stores
       └ mysql
       └ redis           
  └ mgmt
       └ vpc           
       └ jenkins           
  └ security
       └ iam
       └ s3
       └ bastion-host
  └ services
       └ webserver-cluster
