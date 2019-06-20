-module(problem5tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

reverse_string_test() ->
  ?assert(problem5:reverse("I love popcorn.") =:= ".nrocpop evol I").

reverse_ordered_list_test() ->
  OrderedList = [1,2,3,4,5,6,7,8,9],
  ?assert(problem5:reverse(OrderedList) =:= [9,8,7,6,5,4,3,2,1]).
