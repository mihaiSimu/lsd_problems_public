#directory "../";;
#use "commons.ml";;


(* Function 
  reverse list takes a list and produces its reverse
  Don't use the standard reverse fuction from here https://caml.inria.fr/pub/docs/manual-ocaml/libref/List.html implement your own
*)

let rec reverse lst = failwith "Not Implemented";;


(* ========================= Tests: =========================== *)
LsdTest.testExpected (reverse [1;2;3;4;5;6]) [6;5;4;3;2;1] "Reversing [1;2;3;4;5;6]";;