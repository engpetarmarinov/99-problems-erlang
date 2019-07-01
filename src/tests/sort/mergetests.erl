-module(mergetests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

sort_test() ->
  ?assertEqual([1,2,3,4,5,6,7,8,9,10], merge:sort([8,10,1,2,3,7,4,5,6,9])).
