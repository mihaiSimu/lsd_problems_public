(* ================== Please Ignore this section. The problem is after this header ======================================================== *)
(* ================== We could have used the #import like for lists but  ================================================================== *)
(* ================== Visual studio code gives false-pozitive warnings (long story, feel free to ignore)  ================================= *)
(* ================== So we just copy-pasted this convention code (apologies)  ============================================================ *)
(* ================== know we went to great pains to avoid this but just couldn't ======================================================== *)
module LsdTest = 
  struct 
    let test cond msg = if (cond) then print_string ("Test Passed: " ^ msg ^ "\n")  else failwith ("TEST FAILED: " ^ msg)
    let testExpected expected actual msg = test (actual = expected) msg
    let testRelativeError expected actual allowedError msg = 
      let abs x = if (x > 0.0) then x else (-1.0) *. x in
      test ( (abs (actual -. expected)) < allowedError) msg
      module Int = struct
        type t = int
        let compare = compare
      end
      module IntPair = struct
        type t = int * int
        let compare = compare
      end
      module IntM = Map.Make(Int);;
      module StrM = Map.Make(String);;
      module IntS = Set.Make(Int);;
      module IntSS = Set.Make(IntS);;
      module IntPairS = Set.Make(IntPair);;
      module StrS = Set.Make(String);;
      
      (* Don't bother trying to understand these. Just use'em (or do try and understand. This is what real functional programming looks like). *)
      (* GENERIC, used only here *)
      let set_to_str fold_function el_to_string s = 
        (fold_function
        (fun e acc -> acc ^ (el_to_string e) ^ ", ")
        s
        "{") ^ "}";;
      
      (* GENERIC, used only here *)
      let map_to_str fold_function key_to_string value_to_string m = 
        (fold_function
        (fun k v str -> "(" ^ (key_to_string k) ^ " -> " ^ (value_to_string v) ^ "), " ^ str)
        m
        "[") ^ "]";;
      
      let identity = (fun x -> x);;
      
      (* Creates a string representing your int-set *)
      let i_set_to_string = set_to_str IntS.fold string_of_int;;
      (* Creates a string representing your int-int-set *)
      let i_i_set_to_string = set_to_str IntPairS.fold (fun (a,b) -> "(" ^ (string_of_int a) ^ "," ^ (string_of_int b) ^ ") ");;
      (* Creates a string representing your string-set *)
      let s_set_to_string = set_to_str StrS.fold identity;;
      
      (* Creates a string representing your int-int-map *)
      let int_map_to_string = map_to_str IntM.fold string_of_int string_of_int
      (* Creates a string representing your string-string-map *)
      let string_map_to_string = map_to_str StrM.fold identity identity;;
      (* Creates a string representing your int-set-of-int-map *)
      let int_set_int_map_to_string = map_to_str IntM.fold string_of_int i_set_to_string;;
      
      (* GENERIC, used only here *)
      let createmap add_function empty lst = 
        List.fold_right
        (fun (k, v) acc -> add_function k v acc)
        lst
        empty;;
      
      (* Takes a list of touples, where the first element of the touple is an int and creates a map *)
      let create_int_map = createmap IntM.add IntM.empty;;
      (* Takes a list of touples, where the first element of the touple is a string and creates a map *)
      let create_str_map = createmap StrM.add StrM.empty;;
end ;;
open LsdTest;;
(* =========================================================================================================== *)
(* ================================== END IGNORABLE SECTION ================================================== *)
(* =========================================================================================================== *)

(* Function 
  generate_cartesian_product m1 m2

  generates the catesian product of two sets of ints (creates a new set of int-pairs)

*)

let generate_cartesian_product m1 m2 = failwith "Not Implemented";;
(* ========================= Tests: =========================== *)
LsdTest.test (
  IntPairS.equal
    (generate_cartesian_product ( IntS.of_list [1;2;3;4] ) (IntS.of_list [1;2;3;4]))
    (IntPairS.of_list [(1,1); (1,2); (1,3); (1,4); (2,1); (2,2); (2,3); (2,4); (3,1); (3,2); (3,3); (3,4); (4,1); (4,2); (4,3); (4,4)])
  )
"Basic Carthezian Product Test";;

