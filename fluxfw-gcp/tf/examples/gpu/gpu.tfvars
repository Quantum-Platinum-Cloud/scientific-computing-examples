# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

manager_machine_type = "e2-standard-8"
manager_name_prefix  = "gpuex"
manager_scopes       = [ "cloud-platform" ]

login_node_specs = [
    {
        name_prefix  = "gpuex-login"
        machine_arch = "x86-64"
        machine_type = "e2-standard-4"
        instances    = 1
    },
]
login_scopes = [ "cloud-platform" ]

compute_node_specs = [
    {
        name_prefix  = "gpuex-compute-a"
        machine_arch = "x86-64"
        machine_type = "n1-standard-8"
        gpu_count    = 1
        gpu_type     = "nvidia-tesla-v100"
        compact      = false
        instances    = 1
        properties   = []
        boot_script  = "install-juliacuda.sh"
    },
]
compute_scopes = [ "cloud-platform" ]
