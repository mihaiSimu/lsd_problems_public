#directory "../";;
#use "commons.ml";;


(* Function 
  compose f n x 
  Takes a function f, an integer n and a starting value x and aplies the composition of f n times on top of x.
  If n == 0 then return x, if n == 1 then return f(x), if n ==2 then return f(f(x)) ...
*)

let rec compose f n x = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)

LsdTest.testExpected (compose (fun x -> x) 10000 "test string") "test string" "composing identity 10000 times gives same thing";;
LsdTest.testExpected (compose (fun x -> x + 1) 10000 3) 10003 "add 1 10000 times";;
LsdTest.testExpected (compose (fun x -> x * x) 3 2 ) 256 "square 2 3 times";;