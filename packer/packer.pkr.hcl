packer {
    required_plugins {
        amazon = {
            version = ">= 1.1.1"
            source  = "github.com/hashicorp/amazon"
        }
    }
}

source "amazon-ebs" "test" {
    ami_name          = "iman test"
    source_ami        = "ami-02f3f602d23f1659d"
    instance_type     = "t2.micro"
    region            = "us-east-1"
    ssh_username      = "ec2-user"
    vpc_id            = "vpc-0b97448f29df048bd"
    subnet_id         = "subnet-088121577a178d9e2"
    security_group_id = "sg-0a6964789e2d5ac34"
}

build {
    sources = [
        "source.amazon-ebs.test"
    ]

    provisioner "ansible" {
      playbook_file = "./iman.yml"
    }
}