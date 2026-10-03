# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Common abstract component library. Family/catalog names only: no vendor
// part numbers, no manufacturer identity, and no references to any other
// repo or library (the dependency direction out of this library is one-way).

// The library is installed whole (cp.sh copies it into ~/.mcode) but
// consumed per part file: a project references exactly the abstraction
// it needs, e.g. `use mclibs.power/reg.mc`. Same no-aggregate policy --
// no aggregate import; loading this entry file registers nothing by
// design; do not turn it into a full manifest.
