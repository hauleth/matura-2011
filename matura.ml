let rec sklej = function
  | 1 ->  1
  | n ->  if n mod 2 == 0 then
            n - 1 + 2 * sklej(n/2)
          else
            n - 1 + sklej((n+1)/2) + sklej((n-1)/2)
;;

for i = 1 to 10000 do
  Printf.printf "%d\n" (sklej i);
done;;

