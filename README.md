# ExternalDocstrings

[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://tkf.github.io/ExternalDocstrings.jl/dev)
[![CI](https://github.com/tkf/ExternalDocstrings.jl/actions/workflows/test.yml/badge.svg)](https://github.com/tkf/ExternalDocstrings.jl/actions/workflows/test.yml)

ExternalDocstrings.jl is a helper for writing docstrings in markdown files.

See the [documentation](https://tkf.github.io/ExternalDocstrings.jl/dev) for more information.

## Usage

Create markdown files in `src/docs/` (where `src/MyPackage.jl` is the main package source
file).  Put the following line inside of `MyPackage` namespace:

```julia
ExternalDocstrings.@define_docstrings
```

It defines a docstring for name `MyPackage.$name` using the markdown content in
`src/docs/$name.md`.
