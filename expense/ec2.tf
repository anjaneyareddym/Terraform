resource "aws_instance" "expense" {
  #count = 3 # create four similar EC2 instances
  count = length(var.instances_names)
  ami   = var.ami_id
  # instance_type          = "t3.micro"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]


  tags = merge(

    var.common_tags,
    {

      Name = var.instances_names[count.index]

    }

  )


}


resource "aws_security_group" "allow_ssh_terraform" {
  description = "Allow TLS inbound traffic and all outbound traffic"
  name        = "allow_sshh"



  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allow from every one
    ipv6_cidr_blocks = ["::/0"]
  }

  #ami-09c813fb71547fc4f

  # tags = {
  #   Name = "allow_sshh"
  # }


  tags = merge(

    var.common_tags,
    {

      Name = "allow-sshh"

    }

  )


}
