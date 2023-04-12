function SparseStaticResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 2
    @assert length(residual) == 4
    @assert length(y) == 4
    @assert length(x) == 1
    @assert length(params) == 14
@inbounds begin
    residual[1] = (y[1]) - (params[10]*(y[1]/params[10])^params[6]+x[1])
    residual[2] = (y[2]) - (y[1]+(y[3]-y[3]*params[3])/params[13])
    residual[3] = (1/params[2]) - (params[1]+T[1]/T[2])
    residual[4] = (y[4]) - (params[3]*(y[3]-params[11])/params[13]/params[14])
end
    if ~isreal(residual)
        residual = real(residual)+imag(residual).^2;
    end
    return nothing
end

