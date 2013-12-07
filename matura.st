| sklej sklejGen |

sklej := [ :n |
  (n = 1)
    ifTrue:  [ 1 ]
    ifFalse: [
      | half |
      half := n / 2.
      n - 1 + (sklej value: half ceiling) + (sklej value: half floor).
    ].
].

sklejGen := [ :size |
  | arr |
  arr := Array new: size withAll: 1.
  2 to: size do: [ :n |
    | half |
    half := n / 2.
    arr at: n put: (n - 1 + (arr at: half ceiling) + (arr at: half floor)).
  ].
  arr.
].

"| str |
str := sklej value: 10.
Transcript show: str printString.
Transcript cr."

(sklejGen value: 10000) do: [ :v |
  Transcript show: v printString.
  Transcript cr.
].
