-module(problem4tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

length_empty_list_test() ->
  ?assertEqual(0, problem4:my_length([])).

length_string_test() ->
  ?assertEqual(7, problem4:my_length("abcdefg")).

length_list_test() ->
  ?assertEqual(1, problem4:my_length([1])).
