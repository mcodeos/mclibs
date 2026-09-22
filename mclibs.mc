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

// import modules
pub use ./analog/amp.mc
pub use ./analog/filter.mc
pub use ./clock/timer.mc
pub use ./comm/uart2rs485.mc
pub use ./digital/74ahc.mc
pub use ./digital/74ahct.mc
pub use ./digital/74hc.mc
pub use ./digital/74hct.mc
pub use ./digital/74lvc.mc
pub use ./digital/74lvct.mc
pub use ./digital/cd4000b.mc
pub use ./digital/cd4500.mc
pub use ./digital/ttl.mc
pub use ./digital/ttl74s.mc
pub use ./isolation/digitalio.mc
pub use ./power/reg.mc
