var documenterSearchIndex = {"docs":
[{"location":"#ExternalDocstrings.jl","page":"ExternalDocstrings.jl","title":"ExternalDocstrings.jl","text":"","category":"section"},{"location":"","page":"ExternalDocstrings.jl","title":"ExternalDocstrings.jl","text":"ExternalDocstrings","category":"page"},{"location":"#ExternalDocstrings","page":"ExternalDocstrings.jl","title":"ExternalDocstrings","text":"ExternalDocstrings\n\nExternalDocstrings.jl is a helper for writing docstrings in markdown files.\n\nUsage\n\nCreate markdown files in src/docs/ (where src/MyPackage.jl is the main package source file).  Put the following line inside of MyPackage namespace:\n\nExternalDocstrings.@define_docstrings\n\nIt defines a docstring for name MyPackage.$name using the markdown content in src/docs/$name.md.\n\nExtended help\n\nMarkdown transformations\n\nTo use standard markdown (and CommonMark) while supporting special syntaxes for Julia docstring, ExternalDocstrings.jl performs a couple of transformations:\n\n(1) Code fence notation\n\n    # ...\n    ```\n\nis transformed into\n\n    ```jldoctest LABEL\n    # ...\n    ```\n\nwhere `LABEL` is a label unique to the markdown file (i.e., all code blocks in one markdown\nfile are executed in the same session).\n\n(2) To help doctests for non-REPL code block,\n\n    nothing  # hide\n    # output\n\nis inserted at the end of code block if it does not look like a REPL session and does not\nalready have `# output`.\n\n## Tips\n\n### Disable doctest\n\nTo enable syntax highlighting without doctest, use use slightly different code fence\nnotations such as\n\n    ```JULIA\n    this_is_not_doctested() = nothing\n    ```\n\n### Vendoring\n\nExternalDocstrings.jl written as a single-source package to help vendoring.  For example, it\ncan be installed simply by:\n\n\nbash wget https://raw.githubusercontent.com/tkf/ExternalDocstrings.jl/main/src/ExternalDocstrings.jl -O src/ExternalDocstrings.jl ```\n\n\n\n\n\n","category":"module"}]
}
