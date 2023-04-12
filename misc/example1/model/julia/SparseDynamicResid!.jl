function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 5
    @assert length(residual) == 6
    @assert length(y) == 18
    @assert length(x) == 2
    @assert length(params) == 7
@inbounds begin
    residual[1] = (y[8]*params[5]*T[1]) - ((1-params[3])*y[7])
    residual[2] = (y[9]) - (params[1]*T[2]*(params[3]*exp(y[18])*y[13]+y[9]*(1-params[4])))
    residual[3] = (y[7]) - (T[5])
    residual[4] = (y[9]) - (exp(y[12])*(y[7]-y[8])+(1-params[4])*y[3])
    residual[5] = (y[10]) - (params[2]*y[4]+params[7]*y[6]+x[1])
    residual[6] = (y[12]) - (y[4]*params[7]+params[2]*y[6]+x[2])
end
    return nothing
end

