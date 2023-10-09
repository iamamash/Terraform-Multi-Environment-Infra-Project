resource "aws_s3_bucket" "module-bucket" {
  bucket = "${var.env}-bucket"
  tags = {
    Name = "${var.env}-bucket"
  }
}
