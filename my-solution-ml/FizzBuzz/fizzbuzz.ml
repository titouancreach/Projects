(*
  Fizz Buzz - Write a program that prints the numbers from 1 to 100. 
  But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
  For numbers which are multiples of both three and five print “FizzBuzz”.
*)

let isMultiple y x = x mod y == 0;;
let isMultipleThree = isMultiple 3;;
let isMultipleFive = isMultiple 5;;

let rec printFizzBuzzRec index = 
  let pr = (isMultipleThree index, isMultipleFive index) in 
  let _ = match pr with 
    | (true, true) -> print_string "FizzBuzz "
    | (true, false) -> print_string "Fizz "
    | (false, true) -> print_string "Buzz " 
    | _ -> () in
    if index = 100 then () else printFizzBuzzRec (index + 1)


let printFizzBuzz = printFizzBuzzRec 0;;


printFizzBuzz;;