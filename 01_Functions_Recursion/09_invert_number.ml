#directory "../";;
#use "commons.ml";;

(* Function that reverts a number
*)
let revert n = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (revert 12345) 54321 "54321 is the reverse of 12345";;

LsdTest.testExpected (revert 7) 7 "7 is the reverse of 7";;