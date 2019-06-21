-module(problem2tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

find_last_but_last_test() ->
  ?assertEqual(3213, problem2:last_but_last([213,21321,64,21321,3213,2])).

find_last_but_last_when_only_one_test() ->
  List = [2],
  ?assertEqual(nil, problem2:last_but_last(List)).
