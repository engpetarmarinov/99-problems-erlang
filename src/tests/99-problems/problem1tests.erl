-module(problem1tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

find_last_test() ->
  ?assertEqual(2, problem1:last([213,21321,64,21321,3213,2])).

find_last_of_one_test() ->
  ?assertEqual(2, problem1:last([2])).

find_last_of_zero_test() ->
  ?assertEqual(nil, problem1:last([])).

