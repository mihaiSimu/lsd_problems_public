#directory "../";;
#use "commons.ml";;

(* Function 
  totient n 
  returns the number of values that are < x and are co-prime with x (their greatest-common-divisor is 1)
*)

let totient n = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (totient 9) 6 "Totient 9 = 6";;