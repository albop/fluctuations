function SparseDynamicResidTT!(T::Vector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
@inbounds begin
T[1] = (-1)/params[4]
T[2] = params[7]*(1+y[11]*y[12]/params[12])^((-1)/params[6])
T[3] = y[9]^T[1]
end
    return nothing
end

