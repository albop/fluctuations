function SparseDynamicG2TT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    SparseDynamicG1TT!(T, y, x, params, steady_state)
@inbounds begin
T[13] = get_power_deriv(y[15]/y[9],T[1],2)
T[14] = get_power_deriv(1+y[11]*y[12]/params[12],(-1)/params[6],2)
T[15] = get_power_deriv(y[16]/y[10],T[1],2)
end
    return nothing
end

