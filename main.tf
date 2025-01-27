provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "devshon1" {
  bucket = "devshon1"
  acl    = "private"

  tags = {
    Name        = "DevShon1"
    Environment = "Dev"
  }
}

resource "aws_iam_user" "zyguy1" {
  name = "ZyGuy1"
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.zyguy1.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}