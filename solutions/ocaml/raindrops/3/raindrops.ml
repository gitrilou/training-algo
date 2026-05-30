let raindrop n =
    let div3 = n mod 3 = 0 in
    let div5 = n mod 5 = 0 in
    let div7 = n mod 7 = 0 in
    if div3 || div5 || div7 then
        List.fold_left2 (fun str is_div sound -> str ^ if is_div then sound else "") 
        "" [div3; div5; div7] ["Pling"; "Plang"; "Plong"]
    else string_of_int n
