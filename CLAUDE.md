# mclibs rules

## No third-party names (mandatory)

Never mention any third-party company name, product name, or part/model
number anywhere in this repo — not in `.mc` identifiers, comments, doc
strings, parameter names, or READMEs. Abstract shapes are named by function,
and datasheet provenance belongs in mcpub packs, not here.

## No chip documents (mandatory)

This repo must not contain any chip-specific datasheets, schematics, or
other manufacturer documents (PDFs, vendor .txt dumps, source EDA files).
Abstract shapes carry pinout/behavior comments only; the underlying
documents live in the corresponding mcpub packs. For the same reason,
comments must not cite document locations (page numbers, tables, figures,
sections) — no `p.3`, `Table 5-1`, `Figure 8` style references; that
evidence trail lives in the mcpub packs, not here.

## No cross-repo references (mandatory)

This repo is a standalone public library: it must not reference, mention,
or depend on any other repo — no `mcpub` pointers, no `mcd` design-doc
citations, no paths into sibling projects. Comments stand on their own;
references run only within this repo.

## Writing conventions

Long string literals (descriptions, pin help) wrap across source lines
instead of producing very long one-line strings — the grammar accepts
multi-line strings. Continuation lines start at column 0: indentation
would become part of the string value.

## File header law (mandatory)

Every `.mc` file **opens with** this exact 2-line template — and nothing else
before it:

```text
# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.
```

- mclibs is all-MCode: no third-party clause (that line exists only in mcs).
- After the template: one blank line, then the file's own content.

## Enforcement

`.githooks/pre-commit` (activate: `git config core.hooksPath .githooks`)
fails the commit if any tracked `.mc` deviates from the template, and if
any staged file carries a document page reference (`p.27`, `pp.1/25`).
