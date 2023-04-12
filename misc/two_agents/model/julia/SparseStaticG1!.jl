function SparseStaticG1!(T::Vector{<: Real}, g1_v::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 3
    @assert length(g1_v) == 14
    @assert length(y) == 6
    @assert length(x) == 2
    @assert length(params) == 15
@inbounds begin
g1_v[1]=1-params[9]*1/params[9]*get_power_deriv(y[1]/params[9],params[5],1);
g1_v[2]=(-(1/params[12]));
g1_v[3]=(-((1-y[2])/(1-params[12])));
g1_v[4]=1-params[9]*1/params[9]*get_power_deriv(y[2]/params[9],params[5],1);
g1_v[5]=(-((-y[1])/(1-params[12])));
g1_v[6]=1;
g1_v[7]=(-((-(T[1]*get_power_deriv(y[3],(-1)/params[4],1)))/(T[2]*T[2])));
g1_v[8]=1;
g1_v[9]=(-((1-y[6])/params[12]));
g1_v[10]=(-(params[7]*y[6]/params[12]*T[3]/T[2]));
g1_v[11]=(-((1-y[6])/(1-params[12])));
g1_v[12]=(-((-y[5])/params[12]));
g1_v[13]=(-(params[7]*T[3]*y[5]/params[12]/T[2]));
g1_v[14]=(-((-y[5])/(1-params[12])));
end
    if ~isreal(g1_v)
        g1_v = real(g1_v)+2*imag(g1_v);
    end
    return nothing
end

