type nucleotide = A | C | G | T ;;

let hamming_distance (a: nucleotide list) (b: nucleotide list) =
  match ( List.length a, List.length b ) with
  | (x, y) when x == y -> List.fold_left (+) 0 ( List.map2 ( fun x y -> if x <> y then 1 else 0 ) a b ) |> Result.ok
  | (0, _) -> Result.error "left strand must not be empty"
  | (_, 0) -> Result.error "right strand must not be empty"
  | _ -> Result.error "left and right strands must be of equal length"