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

# Piezo sounder abstract shape (component inventory C7, electroacoustic
# family). Distilled from the page-verified TDK PS-series catalog
# (tdk-ps-buzzer-catalog.pdf beside this file; image-only PDF, document
# code 007-01/20110508/ef532_ps, PS1240P02BT detail on catalog p.3).
#
# The PS series ships without oscillator circuit: an external AC drive
# (catalog-typical 3 Vo-p rectangular wave, absolute max 30 Vo-p without
# DC bias) is applied across the two pins. The catalog documents no
# polarity for the pin-terminal parts, so the leaf stays a passive two
#-terminal: no direction words, no interface adoption (ruling-19 census
# A1: passive pairing data is carried by the net's other side). The drive
# network (transistor buffer + charge/discharge resistor, catalog p.8)
# is application-level and stays on the design side.

abstract component BUZZER.PIEZO
{
    name = "Piezo sounder (externally driven)"
    description = "Two-pin passive piezo sounder without oscillator circuit: drive square wave applied across the two terminals (no polarity documented), external drive network stays on the design side"

    pins = [
        1 = A, "Drive terminal A (no polarity documented in the source catalog)"
        2 = B, "Drive terminal B (no polarity documented in the source catalog)"
    ]
}
