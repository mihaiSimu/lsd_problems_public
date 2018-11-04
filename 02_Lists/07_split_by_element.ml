#directory "../";;
#use "commons.ml";;

(* Function 
  split_by_element lst el
  takes a list
  and creates a list-of-lists. The end result contains the elements from the initial list split wherver the element el appears. 
  There will be no remaining empty-lists in the final list (whatever algorithm you choose, remove the empty-lists from the final result for simplicity)
  For example, 
    split_by_element [0;1;2;3;0;4;5;0;1;0] 0
  returns 
    [[1;2;3];[4;5];[1]]  
*)
let split_by_element lst el = failwith "Not Implemented";;


  (* ========================= Tests: =========================== *)
 LsdTest.testExpected (split_by_element [0;1;2;3;0;4;5;0;1;0] 0) [[1; 2; 3]; [4; 5]; [1]] "Test for function split_by_element";; 