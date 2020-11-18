# Autogenerated wrapper script for NetCDF_jll for x86_64-w64-mingw32
export libnetcdf

using HDF5_jll
using Zlib_jll
using LibCURL_jll
using LibSSH2_jll
using MbedTLS_jll
using nghttp2_jll
JLLWrappers.@generate_wrapper_header("NetCDF")
JLLWrappers.@declare_library_product(libnetcdf, "libnetcdf-18.dll")
function __init__()
    JLLWrappers.@generate_init_header(HDF5_jll, Zlib_jll, LibCURL_jll, LibSSH2_jll, MbedTLS_jll, nghttp2_jll)
    JLLWrappers.@init_library_product(
        libnetcdf,
        "bin\\libnetcdf-18.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
