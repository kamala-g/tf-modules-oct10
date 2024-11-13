user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y nginx
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Welcome to Webserver</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "Webserver"
  }
}  