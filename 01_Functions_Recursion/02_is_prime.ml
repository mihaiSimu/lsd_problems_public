#directory "../";;
#use "commons.ml";;

(* Function isPrime : int -> bool that returns true/false depending on weather 
  the argument is a prime number *)
let isPrime n = failwith "Not Implemented";;


(* ========================= Tests: =========================== *)

LsdTest.test (isPrime 13) "13 is prime";;
LsdTest.test (isPrime 2) "2 is prime";;
LsdTest.test (not (isPrime 4)) "4 is not prime";;
LsdTest.test (not (isPrime 22)) "22 is not prime";;
