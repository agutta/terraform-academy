# Copyright 2023 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "google_compute_instance" "default" {
  name         = "test21"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }

  project = "Add your project ID here"
}

## Using project_id variable
# resource "google_compute_instance" "default" {
#   name         = "test21"
#   machine_type = "e2-medium"
#   zone         = "us-central1-a"

#   tags = ["foo", "bar"]

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-11"
#       labels = {
#         my_label = "value"
#       }
#     }
#   }

#   network_interface {
#     network = "default"
#   }

#   project = var.project_id
# }

## Locals example
# locals {
#   tags        = ["foo", "bar"]
#   name_prefix = var.environment != "" ? "tf-${var.environment}" : "tf"
# }

# resource "google_compute_instance" "default" {
#   name         = "${local.name_prefix}-test-11"
#   machine_type = "e2-medium"
#   zone         = "us-central1-a"

#   tags = local.tags

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-11"
#       labels = {
#         my_label = "value"
#       }
#     }
#   }

#   network_interface {
#     network = "default"
#   }

#   project = var.project_id
# }