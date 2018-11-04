#directory "../";;
#use "commons.ml";;

(* Function 
  fibonaci n finds the n-th fibonacci number https://en.wikipedia.org/wiki/Fibonacci_number (1 is the first, 1 is the second, 2 is the third, 3 is the fourth ...)

    Note: If you do the classical double-recursion solution (which we did because we were lazy), don't call it with values of over 25.
      If you want to be cool, use maps (map where the key i is associated to the i-th fibonacci number)
  *)
let rec fibonacci n  = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (fibonacci 1) 1 "1 is the first fibonnaci number" ;;

LsdTest.testExpected (fibonacci 2) 1 "1 is the second fibonnaci number" ;;

LsdTest.testExpected (fibonacci 6) 8 "8 is the sixth fibonnaci number" ;;