open Base
open Container.Continue_or_stop

let empty = Map.empty (module Char)

let map_opt_zero opt = match opt with None -> 0 | Some x -> x 


let map_inc m k =  Map.update m k ~f:(fun x -> (map_opt_zero x) + 1) 


let check_char = String.contains "ACGT"


let check_list = List.findi ~f:(fun _ c -> not(check_char c))


let count_nucleotides s = let chars = String.to_list s in 
   match check_list chars with 
   | Some c -> Error (snd c) 
   | _ ->  Ok (List.fold_left ~f:map_inc  ~init:empty chars) 


let count_nucleotide s c = if not(check_char c) then Error c else 
    match count_nucleotides s with 
   | Ok m -> Ok (map_opt_zero(Map.find m c)) 
   | Error e -> Error e  