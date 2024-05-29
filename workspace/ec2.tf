resource "aws_instance" "TF_Second_EC2" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = lookup(var.instance_type, terraform.workspace) 

  tags = {
    Name = terraform.workspace == "old" ? "Dev" : "Prod"
  }
}