# Autogenerated wrapper script for NetCDF_jll for aarch64-linux-gnu
export libnetcdf

using HDF5_jll
using Zlib_jll
using LibCURL_jll
using LibSSH2_jll
using MbedTLS_jll
using nghttp2_jll
JLLWrappers.@generate_wrapper_header("NetCDF")
JLLWrappers.@declare_library_product(libnetcdf, "libnetcdf.so.18")
function __init__()
    JLLWrappers.@generate_init_header(HDF5_jll, Zlib_jll, LibCURL_jll, LibSSH2_jll, MbedTLS_jll, nghttp2_jll)
    JLLWrappers.@init_library_product(
        libnetcdf,
        "lib/libnetcdf.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
