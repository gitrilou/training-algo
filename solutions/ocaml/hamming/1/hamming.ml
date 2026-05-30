type nucleotide = A | C | G | T

let hamming_distance str1 str2 =
  c = ref 0
  for i = 0 to String.length str1 do
    if str1[i] != str2[i] then incr c
  done;
  !c ;; 
