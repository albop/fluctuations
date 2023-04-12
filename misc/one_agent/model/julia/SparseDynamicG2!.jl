function SparseDynamicG2!(T::Vector{<: Real}, g2_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 9
    @assert length(g2_v) == 6
    @assert length(y) == 12
    @assert length(x) == 1
    @assert length(params) == 14
@inbounds begin
g2_v[1]=(-(params[10]*1/params[10]*1/params[10]*get_power_deriv(y[1]/params[10],params[6],2)));
g2_v[2]=(-(params[1]*(T[5]*(-((-y[10])*(y[6]+y[6])))/(y[6]*y[6]*y[6]*y[6])+T[4]*T[4]*T[9])+(T[3]*T[3]*(-(T[2]*get_power_deriv(y[6],T[1],2)))-T[7]*(T[3]*T[6]+T[3]*T[6]))/(T[3]*T[3]*T[3]*T[3])));
g2_v[3]=(-(params[1]*(T[5]*(-1)/(y[6]*y[6])+T[4]*1/y[6]*T[9])));
g2_v[4]=(-((-(T[6]*T[8]))/(T[3]*T[3])));
g2_v[5]=(-(params[1]*1/y[6]*1/y[6]*T[9]));
g2_v[6]=(-(params[8]*params[3]/params[13]*params[3]/params[13]*get_power_deriv(1+y[7]*params[3]/params[13],(-1)/params[7],2)/T[3]));
end
    return nothing
end

