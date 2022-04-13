module ExternalDocstringsTests

using ExternalDocstrings
using ExternalDocstrings: transform_docstring
using Test

function f end

baremodule Sub
function f end
end

ExternalDocstrings.@define_docstrings

function test_f()
    docstr = string(@doc f)
    @test occursin("Docstring for `ExternalDocstringsTests.f`", docstr)
end

function test_Sub_f()
    docstr = string(@doc Sub.f)
    @test occursin("Docstring for `ExternalDocstringsTests.Sub.f`", docstr)
end

function test_readme()
    docstr = string(@doc ExternalDocstringsTests)
    @test occursin("`ExternalDocstringsTests` tests `ExternalDocstrings`", docstr)
end

function test_kbd()
    input = """
    <kbd>Ctrl</kbd>-<kbd>TAB</kbd>

    ```julia
    julia> str = "<kbd>TAB</kbd>";
    ```
    """

    desired = """
    _Ctrl_-_TAB_

    ```jldoctest LABEL
    julia> str = "<kbd>TAB</kbd>";
    ```
    """

    actual = transform_docstring(input, "LABEL")

    @test Text(actual) == Text(desired)
end

end  # module ExternalDocstringsTests
