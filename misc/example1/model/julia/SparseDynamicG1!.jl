function SparseDynamicG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 5
    @assert length(g1_v) == 26
    @assert length(y) == 18
    @assert length(x) == 2
    @assert length(params) == 7
@inbounds begin
g1_v[1]=(-(T[4]*exp(y[10])*get_power_deriv(y[3],params[3],1)));
g1_v[2]=(-(1-params[4]));
g1_v[3]=(-params[2]);
g1_v[4]=(-params[7]);
g1_v[5]=(-params[7]);
g1_v[6]=(-params[2]);
g1_v[7]=(-(1-params[3]));
g1_v[8]=1;
g1_v[9]=(-exp(y[12]));
g1_v[10]=params[5]*T[1];
g1_v[11]=(-(params[1]*(params[3]*exp(y[18])*y[13]+y[9]*(1-params[4]))*exp(y[12])/(exp(y[18])*y[14])));
g1_v[12]=exp(y[12]);
g1_v[13]=1-params[1]*T[2]*(1-params[4]);
g1_v[14]=1;
g1_v[15]=(-T[5]);
g1_v[16]=1;
g1_v[17]=y[8]*params[5]*get_power_deriv(y[11],1+params[6],1);
g1_v[18]=(-(T[3]*get_power_deriv(y[11],1-params[3],1)));
g1_v[19]=(-(params[1]*T[2]*(params[3]*exp(y[18])*y[13]+y[9]*(1-params[4]))));
g1_v[20]=(-(exp(y[12])*(y[7]-y[8])));
g1_v[21]=1;
g1_v[22]=(-(params[1]*T[2]*params[3]*exp(y[18])));
g1_v[23]=(-(params[1]*(params[3]*exp(y[18])*y[13]+y[9]*(1-params[4]))*(-(y[8]*exp(y[12])*exp(y[18])))/(exp(y[18])*y[14]*exp(y[18])*y[14])));
g1_v[24]=(-(params[1]*((params[3]*exp(y[18])*y[13]+y[9]*(1-params[4]))*(-(y[8]*exp(y[12])*exp(y[18])*y[14]))/(exp(y[18])*y[14]*exp(y[18])*y[14])+T[2]*params[3]*exp(y[18])*y[13])));
g1_v[25]=(-1);
g1_v[26]=(-1);
end
    return nothing
end

