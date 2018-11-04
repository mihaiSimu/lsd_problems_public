#directory "../";;
#use "commons.ml";;

(* Function 
Use the leibniz formula to duduce a value of pi with n terms of the series
https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80
*)

let pi_from_leibniz n = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testRelativeError (pi_from_leibniz 1) 4.0 1.0 "pi approximated with 1 term (we got 4.0)" ;;  
LsdTest.testRelativeError (pi_from_leibniz 100) 3.14159 0.01 "pi approximated with 100 terms (we got 3.1315929035585528)" ;;  
LsdTest.testRelativeError (pi_from_leibniz 100000) 3.14159 0.0001 "pi approximated with 100000 terms (we got 3.14158265358979349)" ;;