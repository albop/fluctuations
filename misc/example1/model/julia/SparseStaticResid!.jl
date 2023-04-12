function SparseStaticResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 4
    @assert length(residual) == 6
    @assert length(y) == 6
    @assert length(x) == 2
    @assert length(params) == 7
@inbounds begin
    residual[1] = (y[2]*params[5]*T[1]) - ((1-params[3])*y[1])
    residual[2] = (y[3]) - (params[1]*(y[1]*params[3]*exp(y[6])+y[3]*(1-params[4])))
    residual[3] = (y[1]) - (T[4])
    residual[4] = (y[3]) - (y[3]*(1-params[4])+exp(y[6])*(y[1]-y[2]))
    residual[5] = (y[4]) - (y[4]*params[2]+y[6]*params[7]+x[1])
    residual[6] = (y[6]) - (y[4]*params[7]+y[6]*params[2]+x[2])
end
    if ~isreal(residual)
        residual = real(residual)+imag(residual).^2;
    end
    return nothing
end

