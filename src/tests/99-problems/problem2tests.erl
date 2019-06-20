-module(problem2tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

find_last_but_last_test() ->
  List = [213,21321,64,21321,3213,2],
  ?assert(problem2:last_but_last(List) =:= 3213).

find_last_but_last_when_only_one_test() ->
  List = [2],
  ?assert(problem2:last_but_last(List) =:= nil).
