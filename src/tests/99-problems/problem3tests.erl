-module(problem3tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

find_nth_element_test() ->
  OrderedList = [1,2,3,4,5,6,7,8,9],
  ?assert(problem3:element_at(OrderedList,4) =:= 4).

find_not_existing_element_test() ->
  OrderedList = [1,2,3,4,5,6,7,8,9],
  ?assert(problem3:element_at(OrderedList,10) =:= nil).

find_not_existing_element_position_negative_test() ->
  OrderedList = [1,2,3,4,5,6,7,8,9],
  ?assert(problem3:element_at(OrderedList, -1) =:= nil).

find_element_in_empty_list_test() ->
  ?assert(problem3:element_at([], 1) =:= nil).
