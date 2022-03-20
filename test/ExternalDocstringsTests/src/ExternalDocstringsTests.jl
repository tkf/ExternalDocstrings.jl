module ExternalDocstringsTests

using ExternalDocstrings
using Test

function f end

ExternalDocstrings.@define_docstrings

function test_f()
    docstr = string(@doc f)
    @test occursin("Docstring for `ExternalDocstringsTests.f`", docstr)
end

function test_readme()
    docstr = string(@doc ExternalDocstringsTests)
    @test occursin("`ExternalDocstringsTests` tests `ExternalDocstrings`", docstr)
end

end  # module ExternalDocstringsTests
