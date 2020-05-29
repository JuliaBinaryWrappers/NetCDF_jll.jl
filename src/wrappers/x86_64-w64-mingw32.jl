# Autogenerated wrapper script for NetCDF_jll for x86_64-w64-mingw32
export libnetcdf

using HDF5_jll
using Zlib_jll
using LibCURL_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libnetcdf`
const libnetcdf_splitpath = ["bin", "libnetcdf-18.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libnetcdf_path = ""

# libnetcdf-specific global declaration
# This will be filled out by __init__()
libnetcdf_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libnetcdf = "libnetcdf-18.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"NetCDF")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (HDF5_jll.PATH_list, Zlib_jll.PATH_list, LibCURL_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (HDF5_jll.LIBPATH_list, Zlib_jll.LIBPATH_list, LibCURL_jll.LIBPATH_list,))

    global libnetcdf_path = normpath(joinpath(artifact_dir, libnetcdf_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libnetcdf_handle = dlopen(libnetcdf_path)
    push!(LIBPATH_list, dirname(libnetcdf_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

