
let rec fibonacci = function
  | 0 -> 0
  | 1 -> 1
  | 2 -> 1
  | x -> fibonacci (x - 1) + fibonacci (x - 2)
;;  

let () =
  match Array.length Sys.argv with 
    | 2 -> 
      begin
        print_int @@ fibonacci @@ int_of_string Sys.argv.(1);
        print_newline ();
      end
    | _ -> failwith "Invalid number of args"
;;

