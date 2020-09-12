# Team2 Module for VPC
## Create module.tf file and copy&paste following input, which works for US-EAST-1 region:

### Variables can be edited according to your requirements.
```
region                      =   "us-east-1"
cidr_block                  =   "10.0.0.0/16"

public_cidr1                =   "10.0.101.0/24"
public_cidr2                =   "10.0.102.0/24"
public_cidr3                =   "10.0.103.0/24"

private_cidr1               =   "10.0.1.0/24"
private_cidr2               =   "10.0.2.0/24"
private_cidr3               =   "10.0.3.0/24"

tags    =   {
    Name                    =   "Team2_VPC"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Department              =   "IT"
   }
```
## Following outputs can be added
```
output "vpc" {
  value = "${module.vpc.vpc}"
}
output "private_subnet1" {
  value = "${module.vpc.private_subnets[0]}"
}
output "private_subnet2" {
  value = "${module.vpc.private_subnets[1]}"
}
output "private_subnet3" {
  value = "${module.vpc.private_subnets[2]}"
}
output "public_subnet1" {
  value = "${module.vpc.public_subnets[0]}"
}
output "public_subnet2" {
  value = "${module.vpc.public_subnets[1]}"
}
output "public_subnet3" {
  value = "${module.vpc.public_subnets[2]}"
}
output "region" {
  value = "${module.vpc.region}"
}
output "Tags" {
  value = "${module.vpc.Tags}"
}
```
## Run following commands to create VPC
### Make sure to type all the commands manually, do not copy and paste!!!
```
terraform init
terraform apply
```
