resource "aws_instance" "TF_EC2" {
  #count = 6
  count = length(var.Name)
  ami           = data.aws_ami.centos8.id
  instance_type = startswith(var.Name[count.index], "MongoDB") ? "t3.small" : "t2.micro"

  tags = {
    Name = var.Name[count.index]
    Environment = var.Environment
    Project = "Roboshop"
    Terraaform = "True"
  }
}



