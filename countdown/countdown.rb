
# def countdown(num)
#    puts num
#    if num == 10
#     return countup(num - 1)
#    end
#    countdown(num + 1)
# end

# def countup(num)
#     puts num
#     return if num == 1
#     countup(num - 1)
# end
def countdown(num)
    puts num
    if num < 10
        countdown(num + 1)
    end
    return if num == 10
    puts num
end

countdown(1)