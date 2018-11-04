#directory "../";;
#use "commons.ml";;

(* Function 
  remove_duplicates lst
  takes a list of and for all elements that appear multiple times, retains only the first time they appear

*)
let remove_duplicates lst = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (remove_duplicates [1;2;3;2;3;1;4;2;6;2;7]) [1;2;3;4;6;7] "Simple removal of duplicates" ;;