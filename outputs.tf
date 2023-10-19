output "youtube_private_key" {
  sensitive = true
  value = tls_private_key.youtube_private_key.private_key_pem
}
