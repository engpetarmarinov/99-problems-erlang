-module(problem1tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

find_last_test() ->
  List = [213,21321,64,21321,3213,2],
  ?assert(problem1:last(List) =:= 2).

find_last_of_one_test() ->
  List = [2],
  ?assert(problem1:last(List) =:= 2).

find_last_of_zero_test() ->
  List = [],
  ?assert(problem1:last(List) =:= nil).

