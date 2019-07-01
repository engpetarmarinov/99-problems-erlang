-module(problem9tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

compress_string_test() ->
  ?assertEqual(["aaaa","b","cc","aa","d","eeee"], problem9:pack("aaaabccaadeeee")).

compress_list_test() ->
  ?assertEqual([[1,1,1],[2,2,2],[3,3],[4,4],[5],[6],[7],[8,8],[9],[2,2,2]], problem9:pack([1,1,1,2,2,2,3,3,4,4,5,6,7,8,8,9,2,2,2])).
