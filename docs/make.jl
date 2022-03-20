using Documenter
using ExternalDocstrings

makedocs(
    sitename = "ExternalDocstrings",
    format = Documenter.HTML(),
    modules = [ExternalDocstrings],
    # Ref:
    # https://juliadocs.github.io/Documenter.jl/stable/lib/public/#Documenter.makedocs
)

deploydocs(
    repo = "github.com/tkf/ExternalDocstrings.jl",
    devbranch = "main",
    push_preview = true,
    # Ref:
    # https://juliadocs.github.io/Documenter.jl/stable/lib/public/#Documenter.deploydocs
)
