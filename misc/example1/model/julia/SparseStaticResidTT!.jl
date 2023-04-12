function SparseStaticResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
@inbounds begin
T[1] = y[5]^(1+params[6])
T[2] = exp(y[4])*y[3]^params[3]
T[3] = y[5]^(1-params[3])
T[4] = T[2]*T[3]
end
    return nothing
end

