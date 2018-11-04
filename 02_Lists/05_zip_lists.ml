#directory "../";;
#use "commons.ml";;

(* Function 
  zip_lists l1 l2
  takes two lists of the same size and creates a new list where all their elements are paired: 
  first element of l1 is paired with first element of l2, second element of l2 is paired with second elmenet of l2 etc.
*)
let rec zip l1 l2 = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (zip [1;2;3;4;5;6] [11;12;13;14;15;16]) [(1,11);(2,12);(3,13);(4,14);(5,15);(6,16)] "Simple test of zip function" ;;