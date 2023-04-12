function SparseDynamicG2TT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    SparseDynamicG1TT!(T, y, x, params, steady_state)
@inbounds begin
T[9] = get_power_deriv(y[10]/y[6],T[1],2)
end
    return nothing
end

