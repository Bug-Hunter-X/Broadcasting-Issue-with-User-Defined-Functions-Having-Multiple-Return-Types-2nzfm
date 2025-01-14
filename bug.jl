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

println(myfunction(2)) # Output: 4
println(myfunction(0)) # Output: 0
println(myfunction(-2)) # Output: -4

#Incorrect behavior when using broadcasting
println(myfunction.([-2,0,2])) #Output:ERROR: MethodError: no method matching myfunction(::Array{Int64,1})
```