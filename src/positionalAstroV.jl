function HourToDegree(Str)
    DegreePos = 0
    MinPos = 0
    SecPos = 0
    if occursin("d",Str)
        DegreePos = findfirst(isequal('d'), Str)

        if occursin("m", Str)
            MinPos =  findfirst(isequal('m'), Str)
        end
        if occursin("s", Str)
            SecPos =  findfirst(isequal('s'), Str)
        end
    elseif occursin("m",Str)
        MinPos =  findfirst(isequal('m'), Str)

        if occursin("s",Str)
            SecPos =  findfirst(isequal('s'), Str)
        end
    elseif occursin("s",Str)
        SecPos =  findfirst(isequal('s'), Str)
    else
       throw(ArgumentError("Invalid Format"))
    end

    DegreePos == 0 ? DegreeNumber = 0 : DegreeNumber = parse(Float64,Str[1:DegreePos-1])
    MinPos == 0 ? MinNumber = 0 : MinNumber = parse(Float64, Str[DegreePos+1:MinPos-1])
    SecPos == 0 ? SecNumber = 0 : SecNumber = parse(Float64, Str[MinPos+1:SecPos-1])

    MinNumber = MinNumber + secToMinute(SecNumber)
    DegreeNumber = DegreeNumber + minuteToDegree(MinNumber)

    return DegreeNumber

end
