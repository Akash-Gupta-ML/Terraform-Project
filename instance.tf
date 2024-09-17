resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.i_type
  key_name                    = aws_key_pair.key_tf.key_name
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
}
