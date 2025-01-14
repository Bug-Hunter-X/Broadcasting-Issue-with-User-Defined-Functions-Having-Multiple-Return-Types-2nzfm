```julia
function myfunction(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    return -x^2
  end
end

#Corrected version using broadcasting and handling different cases for the return type
function myfunction_corrected(x)
  return ifelse.(x .> 0, x.^2, ifelse.(x .== 0, 0, .-x.^2))
end

println(myfunction_corrected.([-2,0,2])) #Output: [-4,0,4]
```