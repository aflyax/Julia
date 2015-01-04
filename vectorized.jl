function unvect()
    x = rand(500)
    y = rand(500)
    a = rand()
    b = rand()
    d = Array(Float64, 0)
    twins = Array(Float64, 0,2)
    
    for i in 1:500
        d = [d; sqrt((x[i] - a)^2 + (y[i] - b)^2)]
        if d[end] < 0.05
            twins = [twins; [x y][end, :]]
        end
    end
    
    return twins
end
