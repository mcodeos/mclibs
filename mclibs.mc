# Copyright 2026 MCode
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

// Common abstract component library. Family/catalog names only: no vendor
// part numbers, no manufacturer identity. Real sampled parts live in mcpub;
// this file never references it (dependency direction mcpub -> mclibs ->
// mcode is one-way).

// The library is installed whole (cp.sh copies it into ~/.mcode) but
// consumed per part file: a project references exactly the abstraction
// it needs, e.g. `use mclibs.power/reg.mc`. Same policy as mcpub --
// no aggregate import; loading this entry file registers nothing by
// design; do not turn it into a full manifest.
