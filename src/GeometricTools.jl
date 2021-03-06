"""
  Methods for the manipulation of geometric data and formatting into VTK
    format.

  # AUTHORSHIP
    * Author    : Eduardo J Alvarez
    * Email     : Edo.AlvarezR@gmail.com
    * Created   : Aug 2017
    * License   : MIT License
"""
module GeometricTools

# ------------ GENERIC MODULES -------------------------------------------------
import PyCall
import PyPlot
import Dierckx
import Roots
import QuadGK

@PyCall.pyimport matplotlib.patches as patch

plt = PyPlot

# ------------ GLOBAL VARIABLES ------------------------------------------------
const module_path = splitdir(@__FILE__)[1]      # Path to this module
                                                # Type of multidiscretize input
const multidisctype = Array{Tuple{Float64,Int64,Float64,Bool},1}

# ------------ HEADERS ---------------------------------------------------------
for header_name in ["vtk", "geometry", "misc", "gridabstract", "airfoil",
                    "surfacing", "plot3d", "vtk_shapes", "conics",
                    "DEPRECATED"]
  include("GeometricTools_"*header_name*".jl")
end

end # END OF MODULE
