# Autogenerated wrapper script for NetCDF_jll for i686-linux-musl-mpi+mpich
export libnetcdf, nc4print, nccopy, ncdump, ncgen, ncgen3, ocprint

using Blosc_jll
using Bzip2_jll
using HDF5_jll
using LibCURL_jll
using XML2_jll
using Zlib_jll
using Zstd_jll
using libzip_jll
using MPICH_jll
JLLWrappers.@generate_wrapper_header("NetCDF")
JLLWrappers.@declare_library_product(libnetcdf, "libnetcdf.so.19")
JLLWrappers.@declare_executable_product(nc4print)
JLLWrappers.@declare_executable_product(nccopy)
JLLWrappers.@declare_executable_product(ncdump)
JLLWrappers.@declare_executable_product(ncgen)
JLLWrappers.@declare_executable_product(ncgen3)
JLLWrappers.@declare_executable_product(ocprint)
function __init__()
    JLLWrappers.@generate_init_header(Blosc_jll, Bzip2_jll, HDF5_jll, LibCURL_jll, XML2_jll, Zlib_jll, Zstd_jll, libzip_jll, MPICH_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libnetcdf,
        "lib/libnetcdf.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        nc4print,
        "bin/nc4print",
    )

    JLLWrappers.@init_executable_product(
        nccopy,
        "bin/nccopy",
    )

    JLLWrappers.@init_executable_product(
        ncdump,
        "bin/ncdump",
    )

    JLLWrappers.@init_executable_product(
        ncgen,
        "bin/ncgen",
    )

    JLLWrappers.@init_executable_product(
        ncgen3,
        "bin/ncgen3",
    )

    JLLWrappers.@init_executable_product(
        ocprint,
        "bin/ocprint",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
