def main
    print_array(input_data)
    solve_with_cycles(input_data)
    solve_with_iterators(input_data)
end

def input_data
    [-1, 2, -3, 5]
end

def print_array(array)
    array.each do |number|
        print number, " "
    end
    puts ""
end

def print_my(array, count)
    print "Positions: "
    print_array(array)
    print "Change: ", amount
    puts ""
end

def solve_with_cycles(array)
    myArray = []
    sign = 0
    ind = -1
    count = 0
    for number in array
        ind +=1
        if (number < 0 && sign > 0) || (number > 0 && sign < 0)
            myArray.push(ind)
            count +=1
        end
        sign = number
    end
    print_my(myArray, count)
end

def solve_with_iterators(array)
    myArray = []
    sign = 0
    count = 0
    array.each_with_index do |number, ind|
        if (number < 0 && sign > 0) || (number > 0 && sign < 0)
            myArray.push(ind)
            count += 1
        end
        sign = number
    end
    print_my(myArray, count)
end

if __FILE__ == $0
    main
end