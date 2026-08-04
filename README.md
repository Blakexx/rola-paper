# RoLA: Scaling Linear Attention's Recall with Sequence Length

LaTeX source for the paper *RoLA: Scaling Linear Attention's Recall with Sequence Length*
(work in progress).

The paper shows that slot memories with input-affine writes and linear readout
are linear attention: the write routing is the key feature vector, the read
routing is the query, and the slot count is the feature dimension. What remains
to any routed design is its feature map, its decay semantics, and the systems
result it demonstrates. RoLA is the design this licenses: a factorized,
exactly sparse (entmax) feature map at large state sizes, the capacity theory
that governs it, and the kernel that makes it affordable.

## Layout

```
sections/        paper body (vanilla LaTeX, venue-portable)
generic/         canonical preprint build (main.tex, arxiv style)
figures/         figure sources
references.bib   bibliography
```

Build: `pdflatex` + `bibtex` on `generic/main.tex`.

Project by Blake Bottum, 2026.
