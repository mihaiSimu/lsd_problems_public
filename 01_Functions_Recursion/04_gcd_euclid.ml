#directory "../";;
#use "commons.ml";;

(* Function 
  gcd_euclid a b 
  Takes two numbers and returns their greatest-common-divisor using euclid's algorithm
*)

let rec gcd_euclid a b = failwith "Not Implemented";;

LsdTest.testExpected (gcd_euclid 3 5) 1 "gcc(3, 5) = 1";;

LsdTest.testExpected (gcd_euclid 12 15) 3 "gcc(13, 15) = 3";;