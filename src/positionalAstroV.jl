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
        print("Invalid Format")
        exit()
    end


    println("DegreePos:", DegreePos)
    println("minPos:", MinPos)
    println("secPos:", SecPos)
    print("Novo")
    if DegreePos == 0
        DegreeNumber = 0
    else
        DegreeNumber = parse(Float64,Str[1:DegreePos-1])
    end

    if MinPos == 0
        MinNumber = 0
    else
        MinNumber = parse(Float64, Str[DegreePos+1:MinPos-1])
    end

    if SecPos == 0
        SecNumber = 0
    else
        SecNumber = parse(Float64, Str[MinPos+1:SecPos-1])
    end



    MinNumber = MinNumber + (SecNumber/60)
    DegreeNumber = DegreeNumber + (MinNumber/60)

    DegreeNumber

end
