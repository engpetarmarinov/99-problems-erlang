-module(problem4tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

length_empty_list_test() ->
  ?assert(problem4:my_length([]) =:= 0).

length_string_test() ->
  ?assert(problem4:my_length("abcdefg") =:= 7).

length_list_test() ->
  ?assert(problem4:my_length([1]) =:= 1).