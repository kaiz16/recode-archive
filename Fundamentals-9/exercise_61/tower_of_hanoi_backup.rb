def iterative_tower_of_hanoi(a, b, c) # Tower A, B, C
    no_of_disks = a.length
    minimum_moves = (2**no_of_disks) - 1
    even_moves = [[a, b], [a, c], [b, c]] # Starting moves for even disks
    odd_moves = [[a, c], [a, b], [c, b]] # Starting moves for odd disks

    # This method produces the steps based on even or odd number of disks
    # Moves are reversed if source tower is empty or if source disk is greater than desitination disk
    def move_towers(odd_or_even_moves, minimum_moves, a, b, c) 
        index = 0
        backup_odd_or_even_moves = odd_or_even_moves
        moves = 1
        minimum_moves.times do 
            if index == odd_or_even_moves.length
                index = 0
                odd_or_even_moves = backup_odd_or_even_moves
            end
            # if !odd_or_even_moves[index][0].empty? && !odd_or_even_moves[index][1].empty?
            #     if odd_or_even_moves[index][0][-1] > odd_or_even_moves[index][1][-1]
            #         odd_or_even_moves[index].reverse!
            #       # p odd_or_even_moves[index]
            #     end
            #  end

             #if odd_or_even_moves[index][0].empty? && !odd_or_even_moves[index][1].empty?
             begin
                if odd_or_even_moves[index][0].empty? || odd_or_even_moves[index][0].last > odd_or_even_moves[index][1].last
                    odd_or_even_moves[index].reverse!
                       # p odd_or_even_moves[index]
                 end
             rescue ArgumentError
                    
             end
              
             
             odd_or_even_moves[index][1].push(odd_or_even_moves[index][0].pop)
            puts "Moves #{moves} | \t Tower A #{a} | B #{b} | C #{c}"
        index += 1
        moves += 1
        end
    end

    if no_of_disks % 2 == 0
        move_towers(even_moves, minimum_moves, a, b, c)
    else
        move_towers(odd_moves, minimum_moves, a, b, c)
    end
end

a = (1..8).to_a.reverse
b = []
c = []
iterative_tower_of_hanoi(a, b, c)


def recursive_tower_of_hanoi
#code here
end

#a = [7,6,5,4,3,2,1]



#code here

a = [8,7,6,5,4,3,2,1] 
b = []
c = []
disks_number = a.length # This is to keep track of how many disk left

$A, $B, $C = a , b, c # Global variables used in output_tower method (Too much parameters to add in recursion method without global variable)
$moves = 0 # This keeps track of moves
def output_tower(from, to) # Output on each moves to see what's going on
    $moves += 1
    puts "Move #{$moves} | #{from} ==> #{to} \t A #{$A} | B #{$B} | C #{$C}"
end 

# A to C for odd disks, A to B for even disks
# At first call, from is A, mid is B, to is C (They are reversed in recursion)
def tower_of_hanoi(disks_number, from, mid, to, tower_A = "A", tower_B = "B", tower_C = "C") # ignore the last three parameters, they are for the output_tower method
    if disks_number == 1 # If there's only one disks, move it to C then stop
        to.push(from.pop)
        output_tower(tower_A, tower_C)
        return 
    end
    # Reduce disk number by 1 and call again (A to B, C is middle)
    tower_of_hanoi(disks_number - 1, from, to, mid, tower_A, tower_C, tower_B) 
    to.push(from.pop) # Move from current tower to destination tower 
    output_tower(tower_A, tower_C)
    # Reduce disk number by 1 and call again (B to C, A is middle)
    tower_of_hanoi(disks_number - 1, mid, from, to, tower_B, tower_A, tower_C)
end

tower_of_hanoi(disks_number, a, b, c)