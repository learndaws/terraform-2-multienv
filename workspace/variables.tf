variable "instance_type" {
  type    = map
  default = {
      old	: "t2.micro"
      new  : "t3.small"
  }
}