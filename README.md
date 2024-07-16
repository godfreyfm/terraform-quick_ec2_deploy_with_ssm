# Goal: Quickly deploy an EC INSTANCE with SSM.

#### Important resources:

- https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file

### In SSM

- Run `sudo -i -u ubuntu` to use as ubuntu user

### You can:

- Close ssh port from the outside world if you only want to access the instance via ssh for tightened security
- Exclude use of the keypair for the ec2 instance if you really want to tie down access only from ssm
