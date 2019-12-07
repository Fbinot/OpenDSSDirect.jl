Base.convert(::Type{MonitorModes}, x::Integer) = MonitorModes(x)
Base.convert(::Type{SolveModes}, x::Integer) = SolveModes(x)
Base.convert(::Type{SolutionLoadModels}, x::Integer) = SolutionLoadModels(x)
Base.convert(::Type{SolutionAlgorithms}, x::Integer) = SolutionAlgorithms(x)
Base.convert(::Type{ControlModes}, x::Integer) = ControlModes(x)
Base.convert(::Type{CktModels}, x::Integer) = CktModels(x)
Base.convert(::Type{RandomModes}, x::Integer) = RandomModes(x)
Base.convert(::Type{AutoAddTypes}, x::Integer) = AutoAddTypes(x)
Base.convert(::Type{CapControlModes}, x::Integer) = CapControlModes(x)
Base.convert(::Type{ActionCodes}, x::Integer) = ActionCodes(x)
Base.convert(::Type{LoadStatus}, x::Integer) = LoadStatus(x)
Base.convert(::Type{LoadModels}, x::Integer) = LoadModels(x)
Base.convert(::Type{LineUnits}, x::Integer) = LineUnits(x)

@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.MonitorModes)), "\n") )
"""
Lib.MonitorModes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.SolveModes)), "\n") )
"""
Lib.SolveModes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.SolutionLoadModels)), "\n") )
"""
Lib.SolutionLoadModels
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.SolutionAlgorithms)), "\n") )
"""
Lib.SolutionAlgorithms
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.ControlModes)), "\n") )
"""
Lib.ControlModes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.CktModels)), "\n") )
"""
Lib.CktModels
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.RandomModes)), "\n") )
"""
Lib.RandomModes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.AutoAddTypes)), "\n") )
"""
Lib.AutoAddTypes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.CapControlModes)), "\n") )
"""
Lib.CapControlModes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.ActionCodes)), "\n") )
"""
Lib.ActionCodes
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.LoadStatus)), "\n") )
"""
Lib.LoadStatus
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.LoadModels)), "\n") )
"""
Lib.LoadModels
@doc """
$( join(map(x -> "- `" * String(x[1]) * "`: " * string(x[2]), CEnum.name_value_pairs(Lib.LineUnits)), "\n") )
"""
Lib.LineUnits
