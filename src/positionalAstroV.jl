function HourToDegree(Str)
    if "°" in Str
        DegreePos = findfirst(isequal('°'), Str)

        if "\'" in Str
            HourPos =  findfirst(isequal('"'), Str) 
        end
        if "\"" in Str
            MinPos =  findfirst(isequal('\''), Str)
        end
    elseif "\"" in Str
        HourPos =  findfirst(isequal('"'), Str)

        if "\"" in Str
            MinPos =  findfirst(isequal('\''), Str)
        end
    elseif "\'" in Str
        MinPos =  findfirst(isequal('\''), Str)
    else
        println("Invalid format")
    end

end
