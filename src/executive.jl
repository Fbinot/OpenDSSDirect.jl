module Executive

using DocStringExtensions

using ..Lib
using ..Utils

@template (FUNCTIONS, METHODS) = """
                                 $(TYPEDSIGNATURES)
                                 $(DOCSTRING)
                                 """

"""Get i-th command"""
function Command(i::Int)::String
    return get_string(@checked Lib.DSS_Executive_Get_Command(i))
end

"""Get help string for i-th command"""
function CommandHelp(i::Int)::String
    return get_string(@checked Lib.DSS_Executive_Get_CommandHelp(i))
end

"""Get i-th option"""
function Option(i::Int)::String
    return get_string(@checked Lib.DSS_Executive_Get_Option(i))
end

"""Get help string for i-th option"""
function OptionHelp(i::Int)::String
    return get_string(@checked Lib.DSS_Executive_Get_OptionHelp(i))
end

"""Get present value of i-th option"""
function OptionValue(i::Int)::String
    return get_string(@checked Lib.DSS_Executive_Get_OptionValue(i))
end

"""Number of DSS Executive Commands"""
function NumCommands()::Int
    return @checked Lib.DSS_Executive_Get_NumCommands()
end

"""Number of DSS Executive Options"""
function NumOptions()::Int
    return @checked Lib.DSS_Executive_Get_NumOptions()
end

end
