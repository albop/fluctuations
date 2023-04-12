function SparseDynamicG1TT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    SparseDynamicResidTT!(T, y, x, params, steady_state)
@inbounds begin
T[4] = (-y[10])/(y[6]*y[6])
T[5] = get_power_deriv(y[10]/y[6],T[1],1)
T[6] = get_power_deriv(y[6],T[1],1)
T[7] = (-(T[2]*T[6]))
T[8] = params[8]*params[3]/params[13]*get_power_deriv(1+y[7]*params[3]/params[13],(-1)/params[7],1)
end
    return nothing
end

