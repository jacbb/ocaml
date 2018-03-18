open OUnit2
open Etl

let ae exp got _test_ctxt =
  let printer xs = String.concat ";" (List.map (fun (ch, n) -> Printf.sprintf "(%c,%d)" ch n) xs) in
  assert_equal exp got ~printer

let tests = [
(* TEST
   "$description" >::
      ae $expected 
         (transform $input);
   END TEST *)
]

let () =
  run_test_tt_main ("etl tests" >::: tests)
