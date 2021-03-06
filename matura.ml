let rec sklej = function
  | 1 ->  1
  | n ->  if n mod 2 == 0 then
            n - 1 + 2 * sklej(n/2)
          else
            n - 1 + sklej((n+1)/2) + sklej((n-1)/2)
;;

let sklej_gen size =
  let rec loop i ret =
    if i > size
    then ret
    else
      let half = (float i) /. 2.0
      in
        loop (i + 1) (List.append ret [i - 1 + (List.nth ret (truncate (ceil half))) + (List.nth ret (truncate (floor half)))])
  in
    loop 2 [1; 1]
;;

(*for i = 1 to 10000 do*)
  (*Printf.printf "%d\n" (sklej i);*)
(*done;;*)
List.iter (Printf.printf "%d\n") (sklej_gen 10000)
