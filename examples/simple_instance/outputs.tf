/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  value = "${var.project_id}"
}

output "subnetwork_project" {
  value = "${var.subnetwork_project}"
}

output "subnetwork" {
  value = "${var.subnetwork}"
}

output "instance_name" {
  value = "${var.instance_name}"
}

output "region" {
  value = "${var.region}"
}

output "zone" {
  value = "${google_compute_instance.vm.zone}"
}

output "vm_container_label" {
  value = "${module.gce-container.vm_container_label}"
}

output "metadata" {
  value = "${module.gce-container.metadata_value}"
}

output "ipv4" {
  value = "${google_compute_instance.vm.network_interface.0.access_config.0.assigned_nat_ip }"
}

output "container" {
  value = "${module.gce-container.container}"
}

output "volumes" {
  value = "${module.gce-container.volumes}"
}
