function SparseDynamicG1TT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    SparseDynamicResidTT!(T, y, x, params, steady_state)
@inbounds begin
T[4] = 1/params[9]
T[5] = (-y[15])/(y[9]*y[9])
T[6] = get_power_deriv(y[15]/y[9],T[1],1)
T[7] = get_power_deriv(y[9],T[1],1)
T[8] = (-(T[2]*T[7]))
T[9] = (-y[16])/(y[10]*y[10])
T[10] = get_power_deriv(y[16]/y[10],T[1],1)
T[11] = y[12]/params[12]
T[12] = get_power_deriv(1+y[11]*y[12]/params[12],(-1)/params[6],1)
end
    return nothing
end

