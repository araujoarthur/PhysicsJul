function minuteToDegree(Min)
    if  typeof(Min) != Float64 && typeof(Min) != Int64
        throw(ArgumentError("Invalid Type"))
    end

    return Min/60


 end

 function secToMinute(Sec)
     if  typeof(Sec) != Float64 && typeof(Sec) != Int64
         throw(ArgumentError("Invalid Type"))
     end

     return Sec/60


  end
