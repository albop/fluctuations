function SparseStaticG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 4
    @assert length(g1_v) == 18
    @assert length(y) == 6
    @assert length(x) == 2
    @assert length(params) == 7
@inbounds begin
g1_v[1]=(-(1-params[3]));
g1_v[2]=(-(params[1]*params[3]*exp(y[6])));
g1_v[3]=1;
g1_v[4]=(-exp(y[6]));
g1_v[5]=params[5]*T[1];
g1_v[6]=exp(y[6]);
g1_v[7]=1-params[1]*(1-params[4]);
g1_v[8]=(-(T[3]*exp(y[4])*get_power_deriv(y[3],params[3],1)));
g1_v[9]=1-(1-params[4]);
g1_v[10]=(-T[4]);
g1_v[11]=1-params[2];
g1_v[12]=(-params[7]);
g1_v[13]=y[2]*params[5]*get_power_deriv(y[5],1+params[6],1);
g1_v[14]=(-(T[2]*get_power_deriv(y[5],1-params[3],1)));
g1_v[15]=(-(params[1]*y[1]*params[3]*exp(y[6])));
g1_v[16]=(-(exp(y[6])*(y[1]-y[2])));
g1_v[17]=(-params[7]);
g1_v[18]=1-params[2];
end
    if ~isreal(g1_v)
        g1_v = real(g1_v)+2*imag(g1_v);
    end
    return nothing
end

