#directory "../";;
#use "commons.ml";;

(* Function 
  nth_minimal_element lst n 
  takes a list of integers and finds the n-th-minimal element, ehwre n >= 1 and the lsit contains at least one element.
  For example, in the list nth_minimal_element [7;10;6;3;2;8] 4;;
  the minimal-element is 2.
  the second-minimal element is 3;
  the third minimal element is 6; 
  the fourth minimal-element is 7 etc.
*)
let nth_minimal_element lst n = failwith "Not Implemented";;


  (* ========================= Tests: =========================== *)
 LsdTest.testExpected (nth_minimal_element [7;10;6;3;2;8] 4) 7 "Simple extract_positions test";; 
 LsdTest.testExpected (nth_minimal_element [7;10;6;3;2;8] 1) 2 "Simple extract_positions test";; 
 LsdTest.testExpected (nth_minimal_element [7;10;6;3;2;8] 6) 10 "Simple extract_positions test";; 