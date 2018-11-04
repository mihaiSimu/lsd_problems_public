#directory "../";;
#use "commons.ml";;

(* Function 
  generate_cartesian_product m n 

  generates the catesian product (as a list of pairs of ints) 
  of the sets 1..m and 1..n
*)

let generate_cartesian_product m n = failwith "Not Implemented";;
(* ========================= Tests: =========================== *)
LsdTest.testExpected (generate_cartesian_product 1 1) [(1, 1)] "Cartesian product of (1..1) * (1..1)";;
LsdTest.testExpected (generate_cartesian_product 1 2) [(1, 1); (1, 2)] "Cartesian product of (1..1) * (1..2)";;
LsdTest.testExpected (generate_cartesian_product 2 2) [(1, 1); (1, 2); (2, 1); (2, 2)] "Cartesian product of (1..2) * (1..2)";;
LsdTest.testExpected (generate_cartesian_product 2 3) [(1, 1); (1, 2); (1, 3); (2, 1); (2, 2); (2, 3)] "Cartesian product of (1..2) * (1..3)";; 