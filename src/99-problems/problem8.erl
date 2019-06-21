%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Eliminate consecutive duplicates of list elements.
%%% If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
%%% Example: compress("aaaabccaadeeee") -> "abcade"
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem8).
-author("petarmarinov").

%% API
-export([compress/1]).

compress(List)->
  compress(List, []).

compress([], Res) ->
  lists:reverse(Res); % reversed result, cause of tail recursion
compress([H | T], []) ->
  compress(T, [H | []]);
compress([H | T], [ RH | TRes]) when H =:= RH -> % skip if already in result
  compress(T, [ RH | TRes]);
compress([H | T], [ RH | TRes]) when H =/= RH -> % just add to result if not in result
  compress(T, [ H | [RH | TRes]]).
