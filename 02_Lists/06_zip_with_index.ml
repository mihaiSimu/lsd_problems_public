#directory "../";;
#use "commons.ml";;

(* Function 
  zip_with_index lst
  takes a list and pairs each element with its position:
  the first element is paired with 0, the second element is paired with 1 etc...
  
*)
let rec zip_with_index lst = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (zip_with_index ["the";"night";"is";"dark";"and";"full";"of";"terrors"]) [("the", 0); ("night", 1); ("is", 2); ("dark", 3); ("and", 4); ("full", 5);("of", 6); ("terror", 7)] "Simple test of zip_with_index function" ;;