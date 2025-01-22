resource "aws_instance" "main_instance"{
    ami= var.ami_id
    instance_type = "t2.micro"

    subnet_id = aws_subnet.main_subnet.id
    tags={
        Name="main_instance"
    }
}
