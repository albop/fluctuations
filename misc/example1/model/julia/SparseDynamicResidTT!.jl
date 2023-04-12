function SparseDynamicResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
@inbounds begin
T[1] = y[11]^(1+params[6])
T[2] = y[8]*exp(y[12])/(exp(y[18])*y[14])
T[3] = exp(y[10])*y[3]^params[3]
T[4] = y[11]^(1-params[3])
T[5] = T[3]*T[4]
end
    return nothing
end

