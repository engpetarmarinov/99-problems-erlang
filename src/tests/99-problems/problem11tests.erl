-module(problem11tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

encode_string_test() ->
  ?assertEqual([[4,"a"],"b","c",[2,"a"],"d",[4,"e"],"f"], problem11:encode_modified("aaaabcaadeeeef")).
