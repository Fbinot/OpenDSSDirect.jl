
module PDElements

using DocStringExtensions

using ..Lib
using ..Utils

@template (FUNCTIONS, METHODS) = """
                                 $(TYPEDSIGNATURES)
                                 $(DOCSTRING)
                                 """

"""accummulated failure rate for this branch on downline"""
function AccumulatedL()::Float64
    return @checked Lib.PDElements_Get_AccumulatedL()
end

"""Number of PD elements (including disabled elements)"""
function Count()::Int
    return @checked Lib.PDElements_Get_Count()
end

"""Number of failures per year. For LINE elements: Number of failures per unit length per year. (Getter)"""
function FaultRate()::Float64
    return @checked Lib.PDElements_Get_FaultRate()
end

"""Number of failures per year. For LINE elements: Number of failures per unit length per year. (Setter)"""
function FaultRate(Value::Float64)
    @checked Lib.PDElements_Set_FaultRate(Value)
end

"""Set the first enabled PD element to be the active element.  Returns 0 if none found."""
function First()::Int
    return @checked Lib.PDElements_Get_First()
end

"""Number of the terminal of active PD element that is on the "from" side. This is set after the meter zone is determined."""
function FromTerminal()::Int
    return @checked Lib.PDElements_Get_FromTerminal()
end

"""Variant boolean indicating of PD element should be treated as a shunt element rather than a series element. Applies to Capacitor and Reactor elements in particular."""
function IsShunt()::Bool
    return @checked(Lib.PDElements_Get_IsShunt()) != 0
end

"""Failure rate for this branch. Faults per year including length of line."""
function Lambda()::Float64
    return @checked Lib.PDElements_Get_Lambda()
end

"""Name of active PD Element. Returns null string if active element is not PDElement type. (Getter)"""
function Name()::String
    return get_string(@checked Lib.PDElements_Get_Name())
end

"""Name of active PD Element. Returns null string if active element is not PDElement type. (Setter)"""
function Name(Value::String)
    @checked Lib.PDElements_Set_Name(Cstring(pointer(Value)))
end

"""Advance to the next PD element in the circuit. Enabled elements only. Returns 0 when no more elements."""
function Next()::Int
    return @checked Lib.PDElements_Get_Next()
end

"""Number of customers, this branch"""
function NumCustomers()::Int
    return @checked Lib.PDElements_Get_Numcustomers()
end

"""Sets the parent PD element to be the active circuit element.  Returns 0 if no more elements upline."""
function ParentPDElement()::Int
    return @checked Lib.PDElements_Get_ParentPDElement()
end

"""Average repair time for this element in hours (Getter)"""
function RepairTime()::Float64
    return @checked Lib.PDElements_Get_RepairTime()
end

"""Average repair time for this element in hours (Setter)"""
function RepairTime(Value::Float64)
    @checked Lib.PDElements_Set_RepairTime(Value)
end

"""Integer ID of the feeder section that this PDElement branch is part of"""
function SectionID()::Int
    return @checked Lib.PDElements_Get_SectionID()
end

"""Total miles of line from this element to the end of the zone. For recloser siting algorithm."""
function TotalMiles()::Float64
    return @checked Lib.PDElements_Get_TotalMiles()
end

"""Total number of customers from this branch to the end of the zone"""
function TotalCustomers()::Int
    return @checked Lib.PDElements_Get_Totalcustomers()
end

"""Get/Set percent of faults that are permanent (require repair). Otherwise, fault is assumed to be transient/temporary. (Getter)"""
function PctPermanent()::Float64
    return @checked Lib.PDElements_Get_pctPermanent()
end

"""Get/Set percent of faults that are permanent (require repair). Otherwise, fault is assumed to be transient/temporary. (Setter)"""
function PctPermanent(Value::Float64)
    @checked Lib.PDElements_Set_pctPermanent(Value)
end

"""Array of strings consisting of all PD element names. (API Extension)"""
function AllNames()::Vector{String}
    return get_string_array(Lib.PDElements_Get_AllNames)
end

"""
Array of doubles with the maximum current across the conductors, for each PD 
element.

By default, only the *first terminal* is used for the maximum current, matching
the behavior of the "export capacity" command. Pass `AllNodes=True` to 
force the analysis to all terminals.

See also: 
https://sourceforge.net/p/electricdss/discussion/beginners/thread/da5b93ca/

(API Extension)
"""
function AllMaxCurrents(AllNodes::Bool=false)::Vector{Float64}
    return get_float64_array(Lib.PDElements_Get_AllMaxCurrents, AllNodes)
end

"""
Array of doubles with the maximum current across the conductors as a percentage 
of the Normal Ampere Rating, for each PD element.

By default, only the *first terminal* is used for the maximum current, matching
the behavior of the "export capacity" command. Pass `AllNodes=True` to 
force the analysis to all terminals.

See also: 
https://sourceforge.net/p/electricdss/discussion/beginners/thread/da5b93ca/

(API Extension)
"""
function AllPctNorm(AllNodes::Bool=false)::Vector{Float64}
    return get_float64_array(Lib.PDElements_Get_AllPctNorm, AllNodes)
end

"""
Array of doubles with the maximum current across the conductors as a percentage
of the Emergency Ampere Rating, for each PD element.

By default, only the *first terminal* is used for the maximum current, matching
the behavior of the "export capacity" command. Pass `AllNodes=True` to 
force the analysis to all terminals.

See also: 
https://sourceforge.net/p/electricdss/discussion/beginners/thread/da5b93ca/

(API Extension)
"""
function AllPctEmerg(AllNodes::Bool=false)::Vector{Float64}
    return get_float64_array(Lib.PDElements_Get_AllPctEmerg, AllNodes)
end

"""
Complex array of currents for all conductors, all terminals, for each PD element.
(API Extension)
"""
function AllCurrentsAllCurrents()::Vector{ComplexF64}
    return get_complex64_array(Lib.PDElements_Get_AllCurrents)
end

"""
Array of currents (complex magnitude, angle) for all conductors, all terminals, for each PD element. 
(API Extension)
"""
function AllCurrentsMagAng()::Vector{Float64}
    return get_complex64_array(Lib.PDElements_Get_AllCurrentsMagAng)
end

"""
Complex double array of Sequence Currents for all conductors of all terminals, for each PD elements.
(API Extension)
"""
function AllCplxSeqCurrents()::Vector{ComplexF64}
    return get_complex64_array(Lib.PDElements_Get_AllCplxSeqCurrents)
end

"""
Double array of Sequence Currents for all conductors of all terminals, for each PD elements.
(API Extension)
"""
function AllSeqCurrents()::Vector{ComplexF64}
    return get_float64_array(Lib.PDElements_Get_AllSeqCurrents)
end

"""
Complex array of powers into each conductor of each terminal, for each PD element.
(API Extension)
"""
function AllPowers()::Vector{ComplexF64}
    return get_float64_array(Lib.PDElements_Get_AllPowers)
end

"""
Complex array of sequence powers into each 3-phase teminal, for each PD element
(API Extension)
"""
function AllSeqPowers()::Vector{ComplexF64}
    return get_float64_array(Lib.PDElements_Get_AllSeqPowers)
end

"""
Integer array listing the number of phases of all PD elements
(API Extension)
"""
function AllNumPhases()::Vector{Int32}
    return get_int32_array(Lib.PDElements_Get_AllNumPhases)
end

"""
Integer array listing the number of conductors of all PD elements
(API Extension)
"""
function AllNumConductors()::Vector{Int32}
    return get_int32_array(Lib.PDElements_Get_AllNumConductors)
end

"""
Integer array listing the number of terminals of all PD elements
(API Extension)
"""
function AllNumTerminals()::Vector{Int32}
    return get_int32_array(Lib.PDElements_Get_AllNumTerminals)
end

end
