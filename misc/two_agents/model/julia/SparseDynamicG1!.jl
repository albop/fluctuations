function SparseDynamicG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 12
    @assert length(g1_v) == 23
    @assert length(y) == 18
    @assert length(x) == 2
    @assert length(params) == 15
@inbounds begin
g1_v[1]=(-(params[9]*T[4]*get_power_deriv(y[1]/params[9],params[5],1)));
g1_v[2]=(-(params[9]*T[4]*get_power_deriv(y[2]/params[9],params[5],1)));
g1_v[3]=(-(1/params[12]));
g1_v[4]=(-(1/(1-params[12])));
g1_v[5]=1;
g1_v[6]=(-(1/params[12]));
g1_v[7]=(-((1-y[8])/(1-params[12])));
g1_v[8]=1;
g1_v[9]=(-((-y[7])/(1-params[12])));
g1_v[10]=1;
g1_v[11]=(-(params[1]*T[5]*T[6]+T[8]/(T[3]*T[3])));
g1_v[12]=1;
g1_v[13]=(-(params[1]*T[9]*T[10]));
g1_v[14]=(-((-y[12])/params[12]));
g1_v[15]=(-(params[7]*T[11]*T[12]/T[3]));
g1_v[16]=(-((-y[12])/(1-params[12])));
g1_v[17]=(-((-y[11])/params[12]));
g1_v[18]=(-(params[7]*T[12]*y[11]/params[12]/T[3]));
g1_v[19]=(-((-y[11])/(1-params[12])));
g1_v[20]=(-(params[1]*T[6]*1/y[9]));
g1_v[21]=(-(params[1]*T[10]*1/y[10]));
g1_v[22]=(-1);
g1_v[23]=(-1);
end
    return nothing
end

