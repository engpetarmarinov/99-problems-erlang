-module(problem7tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

flatten_test() ->
  ?assertEqual([1,2,3,4,5,6,7,8,9], problem7:flatten([1,2,[3,[4,5,6,[7,8,9]]]])).
