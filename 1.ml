let rec mult_3_5 (mlist: int list) (num: int) (max: int): int list =
  if num >= max then
    mlist
  else if num mod 3 = 0 then 
    mult_3_5 ( num :: ( mlist ) ) (num + 1) max
  else if num mod 5 = 0 then
    mult_3_5 ( num :: ( mlist) ) (num + 1) max
  else mult_3_5 mlist (num + 1) max

let rec sum list =
  match list with
  | [] -> 0
  | x :: rest -> x + sum rest
;;

let nums = mult_3_5 [] 1 1000
;;

print_string (String.concat " " ["Sum ="; string_of_int (sum nums)]);;
print_string "\nNums: ";;
print_string (String.concat " " (List.map string_of_int nums));;
print_string "\n";;
   
