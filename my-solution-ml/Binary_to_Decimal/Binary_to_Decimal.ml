

(* Convert our string in list of char code *)
let rec list_car ch = match ch with
  | "" -> []
  | ch -> (Char.code (String.get ch 0))::(list_car (String.sub ch 1 ((String.length ch) - 1)))  
;;


let bin_to_dec bin = 
  let rec bin_to_dec_rec acc p = function 
    | [] -> acc
    | 48::t -> bin_to_dec_rec (acc) (p + 1) t (* 0in ascii *)
    | 49::t -> bin_to_dec_rec (acc + int_of_float (2.0 ** (float_of_int p))) (p + 1) t (* 1 in ascii *)
    | _::t -> failwith "Invalid binary number"
  in
  bin_to_dec_rec 0 0 bin
;;


let () = 
  match Array.length Sys.argv with 
    | 2 -> 
      begin
        let l = list_car Sys.argv.(1) |> List.rev in
        print_int @@ bin_to_dec l;
        print_newline ();
      end
    | _ -> failwith "Invalid number of arguments"
;;
