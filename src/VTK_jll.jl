# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule VTK_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("VTK")
JLLWrappers.@generate_main_file("VTK", UUID("74d5c060-2aa8-5f16-b7f5-964146ffbc58"))
end  # module VTK_jll
