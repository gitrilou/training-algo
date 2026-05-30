let square_of_sum n = 
    (Float.of_int (n * (n + 1)/2)) ** 2.;;

let sum_of_squares n =
    (Float.of_int (n * (n + 1) * (2 * n + 1) / 6));;

let difference_of_squares n =
    square_of_sum n - sum_of_squares n ;;
