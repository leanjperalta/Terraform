resource "aws_instance" "proxy" {
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    key_name = var.key_name
    associate_public_ip_address = true
    
    vpc_security_group_ids = [aws_security_group.proxy_sg.id]
    
      user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y squid

              # Configuración básica de Squid
              cat > /etc/squid/squid.conf << 'INNER_EOF'
              acl localnet src 0.0.0.0/0
              acl Safe_ports port 80
              acl Safe_ports port 443
              acl CONNECT method CONNECT

              http_access deny !Safe_ports
              http_access allow localnet
              http_access deny all

              http_port 3128
              
              
              # Configuración de logs
              access_log /mnt/data/logs/access.log squid
              cache_log /mnt/data/logs/cache.log
              
              INNER_EOF

              
              mkfs.ext4 /dev/xvdf
              mkdir /mnt/data
              mount /dev/xvdf /mnt/data
              mkdir /mnt/data/logs
              chown squid:squid /mnt/data/logs
              chmod 755 /mnt/data/logs
              mkdir -p /var/spool/squid
              chown squid:squid /var/spool/squid

              systemctl start squid
              systemctl enable squid
              
              EOF
        
        tags = {
        Name = "ProxyServer"
    }
  
}

resource "aws_security_group" "proxy_sg" {
    name        = "proxy_sg"
    description = "Security group for proxy server"
    vpc_id      = var.vpc_id
    
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 3128
        to_port     = 3128
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "proxy_sg"
    }
}
    
