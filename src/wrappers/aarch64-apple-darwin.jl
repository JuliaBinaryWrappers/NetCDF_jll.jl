# Autogenerated wrapper script for NetCDF_jll for aarch64-apple-darwin
export libnetcdf

using HDF5_jll
using Zlib_jll
using LibCURL_jll
JLLWrappers.@generate_wrapper_header("NetCDF")
JLLWrappers.@declare_library_product(libnetcdf, "@rpath/libnetcdf.19.dylib")
function __init__()
    JLLWrappers.@generate_init_header(HDF5_jll, Zlib_jll, LibCURL_jll)
    JLLWrappers.@init_library_product(
        libnetcdf,
        "lib/libnetcdf.19.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
