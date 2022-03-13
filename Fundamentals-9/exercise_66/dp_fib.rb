def bottom_up(n)
    array = Array.new
    array << 0
    array << 1
    array << 1
    for i in 3..n
        array.push(array[i - 1] + array[i - 2])
    end
    return array[n]
end

p bottom_up(300)