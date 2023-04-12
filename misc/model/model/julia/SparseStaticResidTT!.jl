function SparseStaticResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
@inbounds begin
T[1] = params[8]*(1+y[3]*params[3]/params[13])^((-1)/params[7])
T[2] = y[2]^((-1)/params[5])
end
    return nothing
end

