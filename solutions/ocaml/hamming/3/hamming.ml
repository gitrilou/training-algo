type nucleotide = A | C | G | T

let hamming_distance nuc1 nuc2 =
  let rec aux nuc1 nuc2 c =
    match nuc1, nuc2 with
    | ([], y :: nuc2') -> failwith "nuc1 empty"
    | (x :: nuc1', []) -> failwith "nuc2 empty"
    | (x :: nuc1', y :: nuc2') -> if x <> y then aux nuc1' nuc2' c + 1 else aux nuc1' nuc2' c
    | ([], []) -> c
  in
  aux nuc1 nuc2 0;;