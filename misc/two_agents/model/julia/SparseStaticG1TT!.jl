function SparseStaticG1TT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    SparseStaticResidTT!(T, y, x, params)
@inbounds begin
T[3] = get_power_deriv(1+y[5]*y[6]/params[12],(-1)/params[6],1)
end
    return nothing
end

