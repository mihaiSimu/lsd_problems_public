#directory "../";;
#use "commons.ml";;

(* Function 
  extract_positions lst poz
  takes two lists as arguments
  the second list (poz) contains positions in the first list (not necessarily in ascending order)
  you must return for each element of poz, the corresponding element in lst (at the corresponding position)
  example:
  extract_positions ["I"; "am"; "the"; "watcher"; "on"; "the"; "walls";"I";"am";"the";"fire";"that";"burns";"against";"the";"cold"]
*)
let rec zip_with_index lst = failwith "Not Implemented";;

let extract_positions lst poz = let with_index = zip_with_index lst in
  List.map (fun i -> fst (List.find (fun (el, poz) -> i == poz) with_index)) poz;;

  (* ========================= Tests: =========================== *)
LsdTest.testExpected (extract_positions ["I"; "am"; "the"; "watcher"; "on"; "the"; "walls";"I";"am";"the";"fire";"that";"burns";"against";"the";"cold"] [0;8;9;10;0;8;9;3])
  ["I"; "am"; "the"; "fire"; "I"; "am"; "the"; "watcher"] "Simple extract_positions test";;