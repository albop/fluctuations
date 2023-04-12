function SparseStaticG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 2
    @assert length(g1_v) == 8
    @assert length(y) == 4
    @assert length(x) == 1
    @assert length(params) == 14
@inbounds begin
g1_v[1]=1-params[10]*1/params[10]*get_power_deriv(y[1]/params[10],params[6],1);
g1_v[2]=(-1);
g1_v[3]=1;
g1_v[4]=(-((-(T[1]*get_power_deriv(y[2],(-1)/params[5],1)))/(T[2]*T[2])));
g1_v[5]=(-((1-params[3])/params[13]));
g1_v[6]=(-(params[8]*params[3]/params[13]*get_power_deriv(1+y[3]*params[3]/params[13],(-1)/params[7],1)/T[2]));
g1_v[7]=(-(params[3]*1/params[13]/params[14]));
g1_v[8]=1;
end
    if ~isreal(g1_v)
        g1_v = real(g1_v)+2*imag(g1_v);
    end
    return nothing
end

