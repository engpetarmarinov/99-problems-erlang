-module(problem10tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

encode_string_test() ->
  ?assertEqual([[4,"a"],[1,"b"],[2,"c"],[2,"a"],[1,"d"],[4,"e"]], problem10:encode("aaaabccaadeeee")).

encode_list_test() ->
  ?assertEqual([[3,[1]],[3,[2]],[2,[3]],[2,[4]],[1,[5]],[1,[6]],[1,[7]],[2,[8]],[1,[9]],[3,[2]]], problem10:encode([1,1,1,2,2,2,3,3,4,4,5,6,7,8,8,9,2,2,2])).
