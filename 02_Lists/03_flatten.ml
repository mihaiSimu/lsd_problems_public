#directory "../";;
#use "commons.ml";;

(* Function 
  flatten lst
  takes a list of lists and concatenates them all
  Don't use the standard flatten function from here https://caml.inria.fr/pub/docs/manual-ocaml/libref/List.html implement your own

*)
let flatten lst = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
LsdTest.testExpected (flatten [[1;2;3;4];[5;6;7;8];[9;10]]) [1;2;3;4;5;6;7;8;9;10] "Simple flattening of lists" ;;