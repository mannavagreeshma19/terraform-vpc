resource "aws_vpc" "main_vpc"{
    cidr_block= "198.${var.vpc_cidr_2}.${var.vpc_cidr_3}.0/24"
    enable_dns_support= true
    enable_dns_hostnames=true
    tags={
        Name="main-vpc"
    }
}

resource "aws_subnet" "main_subnet"{
    vpc_id=aws_vpc.main_vpc.id
    cidr_block=cidrsubnet(aws_vpc.main_vpc.cidr_block, 2, 1) 
    map_public_ip_on_launch = true
    availability_zone = "${data.aws_region.current.name}a" 
    tags={
        Name="main_subnet"
    }
}