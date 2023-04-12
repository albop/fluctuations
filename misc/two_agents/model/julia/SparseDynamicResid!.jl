function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 3
    @assert length(residual) == 6
    @assert length(y) == 18
    @assert length(x) == 2
    @assert length(params) == 15
@inbounds begin
    residual[1] = (y[7]) - (params[9]*(y[1]/params[9])^params[5]+x[1])
    residual[2] = (y[8]) - (params[9]*(y[2]/params[9])^params[5]+x[2])
    residual[3] = (y[9]) - (y[7]/params[12]+(y[5]-y[11]*y[12])/params[12])
    residual[4] = (1/params[2]) - (params[1]*(y[15]/y[9])^T[1]+T[2]/T[3])
    residual[5] = (y[10]) - (y[7]*(1-y[8])/(1-params[12])+(y[5]-y[11]*y[12])/(1-params[12]))
    residual[6] = (1/params[2]) - (params[1]*(y[16]/y[10])^T[1])
end
    return nothing
end

