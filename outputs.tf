output "jenkins_server_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.jenkins_artifacts.bucket
}
