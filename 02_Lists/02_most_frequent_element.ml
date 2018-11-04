#directory "../";;
#use "commons.ml";;


(* Function 
  most_frequent_element lst
  takes a list and returns the element that appears the most in it. The list contains at least one element;
*)

let most_frequent_element lst = failwith "Not Implemented";;


(* ========================= Tests: =========================== *)
LsdTest.testExpected (most_frequent_element [1;2;3;1;2;3;3;2;2]) 2 "Most frequent element is 2";;