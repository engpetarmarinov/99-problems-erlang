-module(problem3tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

find_nth_element_test() ->
  ?assertEqual(4, problem3:element_at([1,2,3,4,5,6,7,8,9],4)).

find_not_existing_element_test() ->
  ?assertEqual(nil, problem3:element_at([1,2,3,4,5,6,7,8,9],10)).

find_not_existing_element_position_negative_test() ->
  ?assertEqual(nil, problem3:element_at([1,2,3,4,5,6,7,8,9], -1)).

find_element_in_empty_list_test() ->
  ?assertEqual(nil, problem3:element_at([], 1)).
