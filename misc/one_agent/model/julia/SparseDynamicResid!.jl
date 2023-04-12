function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 3
    @assert length(residual) == 4
    @assert length(y) == 12
    @assert length(x) == 1
    @assert length(params) == 14
@inbounds begin
    residual[1] = (y[5]) - (params[10]*(y[1]/params[10])^params[6]+x[1])
    residual[2] = (y[6]) - (y[5]+(y[3]-y[7]*params[3])/params[13])
    residual[3] = (1/params[2]) - (params[1]*(y[10]/y[6])^T[1]+T[2]/T[3])
    residual[4] = (y[8]) - (params[3]*(y[7]-params[11])/params[13]/params[14])
end
    return nothing
end

