#directory "../";;
#use "commons.ml";;


(* Function 
  factorial n
  Takes an integer n and returns its factorial
*)

let rec factorial n = failwith "Not Implemented";;


(* ========================= Tests: =========================== *)
LsdTest.testExpected (factorial 3) 6 "3! = 6";;

LsdTest.testExpected (factorial 5) 120 "5! = 120";;