resource "aws_instance" "main_instance"{
    ami= var.ami_id
    instance_type = "t2.micro"

    subnet_id = aws_subnet.main_subnet.id
    tags={
        Name="main_instance"
    }

    user_data = <<-EOF
    #!/bin/bash
    
    sudo apt update -y
    sudo apt install -y unzip curl
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
  EOF
}
