type nucleotide = A | C | G | T ;;

let hamming_distance nuc1 nuc2 =
  match List.length nuc1, List.length nuc2 with
  | 0, _ -> Result.error "left strand must not be empty"
  | _, 0 -> Result.error "right strand must not be empty"
  | (x, y) when x == y -> List.fold_left (+) 0 ( List.map2 ( fun x y -> if x <> y then 1 else 0 ) nuc1 nuc2 ) |> Result.ok
  | _ -> Result.error "left and right strands must be of equal length"
;;