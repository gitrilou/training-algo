type nucleotide = A | C | G | T

let hamming_distance nuc1 nuc2 =
  match List.length nuc1, List.length nuc2 with
  | (0,_) -> failwith "nuc1 empty"
  | (_,0) -> failwith "nuc2 empty"
  | (x,y) when x == y -> List.fold_left (+) 0 (List.map2 (fun x y -> if x <> y then 1 else 0 ) nuc1 nuc2)