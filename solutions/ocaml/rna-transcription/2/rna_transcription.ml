type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

let to_rna dna =
    List.map (fun dna -> match dna with 
        | `A -> `U :: lrna
        | `C -> `G :: lrna
        | `G -> `C :: lrna
        | `T -> `A :: lrna) dna
;;
