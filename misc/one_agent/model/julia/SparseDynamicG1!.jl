function SparseDynamicG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 8
    @assert length(g1_v) == 12
    @assert length(y) == 12
    @assert length(x) == 1
    @assert length(params) == 14
@inbounds begin
g1_v[1]=(-(params[10]*1/params[10]*get_power_deriv(y[1]/params[10],params[6],1)));
g1_v[2]=(-(1/params[13]));
g1_v[3]=1;
g1_v[4]=(-1);
g1_v[5]=1;
g1_v[6]=(-(params[1]*T[4]*T[5]+T[7]/(T[3]*T[3])));
g1_v[7]=(-((-params[3])/params[13]));
g1_v[8]=(-(T[8]/T[3]));
g1_v[9]=(-(params[3]*1/params[13]/params[14]));
g1_v[10]=1;
g1_v[11]=(-(params[1]*T[5]*1/y[6]));
g1_v[12]=(-1);
end
    return nothing
end

