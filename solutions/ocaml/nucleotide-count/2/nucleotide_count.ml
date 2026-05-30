open Base
open Container.Continue_or_stop

let empty = Map.empty (module Char)

let is_nucleotide n = 
  match n with 
  | "A" | "C" | "G" | "T" -> true
  | _ -> false

let count_nucleotide s c =
  let plus n = 
    match n with
    | c' when is_nucleotide n -> Continue (if equal c' c then n + 1 else n)
    | _ -> Stop (Error c')
  in
  if is_nucleotide c then
    String.fold_until s ~init:0 ~f:incr ~finish:Result.return
  else
    Error c

let count_nucleotides s =
  let incr_count m c =
          Map.update m c ~f:(function
            | Some count -> count + 1
            | None -> 1
          )
      in
      let incr m = function
        | c' when is_nucleotide c' -> Continue (incr_count m c')
        | c' -> Stop (Error c')
      in
      String.fold_until s ~init:empty ~f:incr ~finish:Result.return  
