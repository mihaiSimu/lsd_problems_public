#directory "../";;
#use "commons.ml";;

(* Function 
  number_of_prime_divisors n 
  returns the number of prime divisors of n
*)

let number_of_prime_divisors n  = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)

LsdTest.testExpected (number_of_prime_divisors 12) 2 "12 has 2 prime divisors";;

LsdTest.testExpected (number_of_prime_divisors 30) 3 "30 has 3 prime divisors";;