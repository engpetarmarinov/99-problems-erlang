-module(problem5tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

reverse_string_test() ->
  ?assertEqual(".nrocpop evol I", problem5:reverse("I love popcorn.")).

reverse_ordered_list_test() ->
  ?assertEqual([9,8,7,6,5,4,3,2,1], problem5:reverse([1,2,3,4,5,6,7,8,9])).
