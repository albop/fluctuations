function SparseDynamicResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
@inbounds begin
T[1] = (-1)/params[5]
T[2] = params[8]*(1+y[7]*params[3]/params[13])^((-1)/params[7])
T[3] = y[6]^T[1]
end
    return nothing
end

