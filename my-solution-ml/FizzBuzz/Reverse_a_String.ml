(* 
  Enter a string and the program will reverse it and print it out.
*)



let explode s =
  let rec exp i l =
    if i < 0 then l else exp (i - 1) (s.[i] :: l) in
  exp (String.length s - 1) []

let joinS = List.fold_left (fun acc c -> acc ^ String.make 1 c) "";;



let rec reverse str =
  let rec aux acc = function  
    | [] -> acc
    | h :: t -> aux (h::acc) t in 
  aux [] str;;


let s = joinS (reverse (explode "titouan")) in
print_string s;;