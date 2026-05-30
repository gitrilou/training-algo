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
    let d = decomp_binary_aux n [] in
    let l = List.length d in
    if l < 8 then List.append (List.init (8 - l) (fun _ -> 0)) d
    else d ;;
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


let allergic_to score item =
    let a = Array.of_list (decomp_binary score) in
    a.(allergen_to_power item) = 1;;

let allergies score =
    let list_of_items = [Eggs; Peanuts; Shellfish; Strawberries; Tomatoes; Chocolate; Pollen; Cats] in
    List.filter (fun x -> allergic_to score x) list_of_items
;;


    
