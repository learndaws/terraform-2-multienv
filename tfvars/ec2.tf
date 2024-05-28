resource "aws_instance" "TF_EC2" {
  #count = 6
  count = length(var.Name)
  ami           = data.aws_ami.centos8.id
  instance_type = var.Name[count.index] == "MongoDB-dev" || var.Name[count.index] == "MongoDB-prod" ? "t3.small" : "t2.micro"

  tags = {
    Name = var.Name[count.index]
    Project = "Roboshop"
    Terraaform = "True"
  }
}



