#directory "../";;
#use "commons.ml";;

(* Find the pair of primes that sums up to a positive even number 
(Goldbach Conjecture says that every even number > 2 is the sum of two prime numbers) 
*)

let goldbach n = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (goldbach 8) (3, 5) "8 = 3 + 5";;
LsdTest.testExpected (goldbach 12) (5, 7) "8 = 3 + 5";;