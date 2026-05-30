type allergen = Eggs
              | Peanuts
              | Shellfish
              | Strawberries
              | Tomatoes
              | Chocolate
              | Pollen
              | Cats

let decomp_binary n =
    let rec decomp_binary_aux n acc =
        if n = 0 then acc
        else decomp_binary_aux (n / 2) ((n mod 2) :: acc)
    in
    decomp_binary_aux n []
;;

let allergen_to_power = function
    | Eggs -> 0
    | Peanuts -> 1
    | Shellfish -> 2
    | Strawberries -> 3
    | Tomatoes -> 4
    | Chocolate -> 5
    | Pollen -> 6
    | Cats -> 7
;;

let allergen_to_int = function
    | Eggs -> 1
    | Peanuts -> 2
    | Shellfish -> 4
    | Strawberries -> 8
    | Tomatoes -> 16
    | Chocolate -> 32
    | Pollen -> 64
    | Cats -> 128
;;

let allergic_to item score =
    let a = Array.of_list (decomp_binary score) in
    let p = allergen_to_int item in
    a.(allergen_to_power item) = 1;;

let allergies score =
    let list_of_items = [Eggs; Peanuts; Shellfish; Strawberries; Tomatoes; Chocolate; Pollen; Cats] in
    List.filter (fun x -> allergic_to x score) list_of_items
;;


    
