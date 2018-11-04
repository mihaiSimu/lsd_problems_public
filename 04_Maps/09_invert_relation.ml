(* ================== Please Ignore this section. The problem is after this header ======================================================== *)
(* ================== We could have used the #import like for lists but  ================================================================== *)
(* ================== Visual studio code gives false-pozitive warnings (long story, feel free to ignore)  ================================= *)
(* ================== So we just copy-pasted this convention code (apologies)  ============================================================ *)
(* ================== know we went to great pains to avoid this but just couldn't ======================================================== *)
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
      
      (* Creates a string representing your int->int map *)
      let int_map_to_string = map_to_str IntM.fold string_of_int string_of_int
      (* Creates a string representing your string->string map *)
      let string_map_to_string = map_to_str StrM.fold identity identity;;
      (* Creates a string representing your int->set-of-int map *)
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
      (* Takes a list of touples, where the first element of the touple is an int and the second is a set-of-int and creates a map *)
      let create_relation = createmap IntM.add IntM.empty;;
(* =========================================================================================================== *)
(* ================================== END IGNORABLE SECTION ================================================== *)
(* =========================================================================================================== *)

(* Function 
  invert_relation mp

  takes a map mp, representing a relation (map from in to set-of-int) and the inverse of that relation.
  For example, if the initial relation is the less-than on 1..4
  (1 -> {2,3,4}) (2 -> {3, 4}) (3 -> {4}) (4 -> {}), its inverse (by inverting the direction of the edges) is:
  (1 -> {}) (2 -> {1}) (3 -> {1, 2}) (4 -> {1,2,3}), actually the greater-relation

  *)

let invert_relation mp = failwith "Not Implemented";;

(* ========================= Tests: =========================== *)
let less_than_1_4 = create_int_map [
  (1, (IntS.of_list [2;3;4]));
  (2, (IntS.of_list [3;4]));
  (3, (IntS.of_list [4]));
  (4, (IntS.of_list []))
];;
let inverse_less_than_1_4 = create_int_map [
  (1, (IntS.of_list []));
  (2, (IntS.of_list [1]));
  (3, (IntS.of_list [1;2]));
  (4, (IntS.of_list [1;2;3]))
];;

let less_than_or_equal_1_4 = create_int_map [
  (1, (IntS.of_list [1;2;3;4]));
  (2, (IntS.of_list [2;3;4]));
  (3, (IntS.of_list [3;4]));
  (4, (IntS.of_list [4]))
];;

let inverse_less_than_or_equal_1_4 = create_int_map [
  (1, (IntS.of_list [1]));
  (2, (IntS.of_list [1;2]));
  (3, (IntS.of_list [1;2;3]));
  (4, (IntS.of_list [1;2;3;4]))
];;

let mod_3_equality = create_int_map [
  (1, (IntS.of_list [1;4;7]));
  (2, (IntS.of_list [2;5]));
  (3, (IntS.of_list [3;6]));
  (4, (IntS.of_list [1;4;7]));
  (5, (IntS.of_list [2;5]));
  (6, (IntS.of_list [3;6]));
  (7, (IntS.of_list [1;4;7]))
];;

let dummy_relation = create_int_map [
  (1, (IntS.of_list [1;2]));
  (2, (IntS.of_list [1;2;3;4]));
  (3, (IntS.of_list [3;2]));
  (4, (IntS.of_list [3]));
];;

let inverse_dummy_relation = create_int_map [
  (1, (IntS.of_list [1;2]));
  (2, (IntS.of_list [1;2;3]));
  (3, (IntS.of_list [2;3;4]));
  (4, (IntS.of_list [2]));
];;

(* Testing equality of maps is horrible. *)
(* int_set_int_map_to_string (invert_relation less_than_1_4) ;; *)

test (IntM.equal 
      IntS.equal
      (invert_relation less_than_1_4) 
      inverse_less_than_1_4
    ) "Test Inversion of less-than";;

test (IntM.equal 
  IntS.equal
  (invert_relation less_than_or_equal_1_4) 
  inverse_less_than_or_equal_1_4
) "Test Inversion of less-than-or-equal";;

test (IntM.equal 
  IntS.equal
  (invert_relation mod_3_equality) 
  mod_3_equality
) "Test Inversion of mod_3_equality is same as initial relation";;

test (IntM.equal 
  IntS.equal
  (invert_relation dummy_relation) 
  inverse_dummy_relation
) "Test Inversion of dummy_relation";;