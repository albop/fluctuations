function SparseStaticResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 2
    @assert length(residual) == 6
    @assert length(y) == 6
    @assert length(x) == 2
    @assert length(params) == 15
@inbounds begin
    residual[1] = (y[1]) - (params[9]*(y[1]/params[9])^params[5]+x[1])
    residual[2] = (y[2]) - (params[9]*(y[2]/params[9])^params[5]+x[2])
    residual[3] = (y[3]) - (y[1]/params[12]+(y[5]-y[5]*y[6])/params[12])
    residual[4] = (1/params[2]) - (params[1]+T[1]/T[2])
    residual[5] = (y[4]) - (y[1]*(1-y[2])/(1-params[12])+(y[5]-y[5]*y[6])/(1-params[12]))
    residual[6] = (1/params[2]) - (params[1])
end
    if ~isreal(residual)
        residual = real(residual)+imag(residual).^2;
    end
    return nothing
end

