function SparseDynamicG2!(T::Vector{<: Real}, g2_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 15
    @assert length(g2_v) == 16
    @assert length(y) == 18
    @assert length(x) == 2
    @assert length(params) == 15
@inbounds begin
g2_v[1]=(-(params[9]*T[4]*T[4]*get_power_deriv(y[1]/params[9],params[5],2)));
g2_v[2]=(-(params[9]*T[4]*T[4]*get_power_deriv(y[2]/params[9],params[5],2)));
g2_v[3]=(-((-1)/params[12]));
g2_v[4]=(-(params[1]*(T[6]*(-((-y[15])*(y[9]+y[9])))/(y[9]*y[9]*y[9]*y[9])+T[5]*T[5]*T[13])+(T[3]*T[3]*(-(T[2]*get_power_deriv(y[9],T[1],2)))-T[8]*(T[3]*T[7]+T[3]*T[7]))/(T[3]*T[3]*T[3]*T[3])));
g2_v[5]=(-(params[1]*(T[6]*(-1)/(y[9]*y[9])+T[5]*1/y[9]*T[13])));
g2_v[6]=(-((-(T[7]*params[7]*T[11]*T[12]))/(T[3]*T[3])));
g2_v[7]=(-((-(T[7]*params[7]*T[12]*y[11]/params[12]))/(T[3]*T[3])));
g2_v[8]=(-(params[1]*1/y[9]*1/y[9]*T[13]));
g2_v[9]=(-(params[7]*T[11]*T[11]*T[14]/T[3]));
g2_v[10]=(-(params[7]*(1/params[12]*T[12]+T[11]*y[11]/params[12]*T[14])/T[3]));
g2_v[11]=(-(params[7]*y[11]/params[12]*y[11]/params[12]*T[14]/T[3]));
g2_v[12]=(-((-1)/(1-params[12])));
g2_v[13]=(-((-1)/(1-params[12])));
g2_v[14]=(-(params[1]*(T[10]*(-((-y[16])*(y[10]+y[10])))/(y[10]*y[10]*y[10]*y[10])+T[9]*T[9]*T[15])));
g2_v[15]=(-(params[1]*(T[10]*(-1)/(y[10]*y[10])+T[9]*1/y[10]*T[15])));
g2_v[16]=(-(params[1]*1/y[10]*1/y[10]*T[15]));
end
    return nothing
end

