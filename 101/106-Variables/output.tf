output "instance_id" {
  value       = google_compute_instance.default.id
  #sensitive   = true
  description = "description"
}

output "instance_name" {
  value       = google_compute_instance.default.name
  description = "description"
}

# locals {
#     tfvars = {
#     name       = google_compute_instance.default.name
#     instance_id = google_compute_instance.default.id
#   }
# }
# resource "local_file" "tfvars" {
#   file_permission = "0644"
#   filename        = "${path.module}/sample.auto.tfvars.json"
#   content         = jsonencode(local.tfvars)
# }