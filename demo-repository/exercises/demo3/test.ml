open Test_lib
open Report

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [ Section
      ([ Text "Function:" ; Code "now_string" ],
       test_function_1_against_solution
         [%ty : unit -> string ] "now_string" 
         [ () ]) ]