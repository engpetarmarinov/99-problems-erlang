-module(problem8tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

compress_string_test() ->
  ?assertEqual("abcade", problem8:compress("aaaabccaadeeee")).

compress_list_test() ->
  ?assertEqual([1,2,3,4,5,6,7,8,9], problem8:compress([1,1,1,2,2,2,3,3,4,4,5,6,7,8,8,9])).
