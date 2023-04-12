function SparseStaticResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
@inbounds begin
T[1] = params[7]*(1+y[5]*y[6]/params[12])^((-1)/params[6])
T[2] = y[3]^((-1)/params[4])
end
    return nothing
end

