variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux 2"
  default     = "ami-07a6f770277670015" # Double-check your region's AMI
}

variable "key_name" {
    default     = "KEY_NAME_HERE" # Replace with your EC2 Key Pair name
  description = "Name of the EC2 Key Pair for SSH access"
}

variable "bucket_name" {
  description = "Name of the S3 Bucket for Jenkins artifacts"
  default     = "YOUR_BUCKET_NAME_HERE"  # <-- make sure it's globally unique
}
