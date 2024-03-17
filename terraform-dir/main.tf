resource "aws_instance" "web-server-prod" {
  ami           = "ami-009d85eb65d7c8457"
  instance_type = "t2.micro"
  key_name      = "ahmedsrebrenica"
  vpc_security_group_ids = [aws_security_group.web_server_prod.id]

  tags = {
    Name      = "web-server-prod"
    CreatedBy = "AhmedSrebrenica"
  }
}

resource "aws_security_group" "web_server_prod" {
  name        = "web-server-sg-prod"
  description = "Security group for web server prod"
  
  vpc_id = "vpc-00a48fd2c970d4962"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "web-server-test" {
  ami           = "ami-009d85eb65d7c8457"
  instance_type = "t2.micro"
  key_name      = "ahmedsrebrenica"
  vpc_security_group_ids = [aws_security_group.web_server_test.id]

  tags = {
    Name      = "web-server-test"
    CreatedBy = "AhmedSrebrenica"
  }
}

resource "aws_security_group" "web_server_test" {
  name        = "web-server-sg-test"
  description = "Security group for web server test"
  
  vpc_id = "vpc-00a48fd2c970d4962"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
