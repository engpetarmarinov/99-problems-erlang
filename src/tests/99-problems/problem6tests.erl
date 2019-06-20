-module(problem6tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

non_palindrome_test() ->
  ?assertNot(problem6:palindrome("wkjqhe")).

palindrome_test() ->
  ?assert(problem6:palindrome("abba")).
