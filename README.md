# ExternalDocstrings

ExternalDocstrings.jl is a helper for writing docstrings in markdown files.

## Usage

Create markdown files in `src/docs/` (where `src/MyPackage.jl` is the main package source
file).  Put the following line inside of `MyPackage` namespace:

```julia
ExternalDocstrings.@define_docstrings
```

It defines a docstring for name `MyPackage.$name` using the markdown content in
`src/docs/$name.md`.
