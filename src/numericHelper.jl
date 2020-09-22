function minuteToDegree(Min) #Tested
    if  typeof(Min) != Float64 && typeof(Min) != Int64
        throw(ArgumentError("Invalid Type [Expected: Float64 or Int64]"))
    end
    return Min/60
 end

function degreeToMinute(Degree)
    if  typeof(Degree) != Float64 && typeof(Degree) != Int64
        throw(ArgumentError("Invalid Type [Expected: Float64 or Int64]"))
    end
    return Degree * 60
end

function minuteToSecond(Min)
    if  typeof(Min) != Float64 && typeof(Min) != Int64
        throw(ArgumentError("Invalid Type [Expected: Float64 or Int64]"))
    end
    return Min * 60
end

 function secToMinute(Sec) #Tested
     if  typeof(Sec) != Float64 && typeof(Sec) != Int64
         throw(ArgumentError("Invalid Type [Expected: Float64 or Int64]"))
     end
     return Sec/60
  end


function decimalPart(Numeric) #Tested
    if  typeof(Numeric) != Float64
        throw(ArgumentError("Invalid Type [Expected: Float64]"))
    end
    return Numeric - Int(floor(Numeric))
end
