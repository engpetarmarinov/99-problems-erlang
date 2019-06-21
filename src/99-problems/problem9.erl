%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
%%% pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] -> ["aaaa","b","cc","aa","d","eeee"]
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem9).
-author("petarmarinov").

%% API
-export([pack/1]).


%%test() ->
%%  Res = problem9:pack([1,1,1,2,2,2,3,3,4,4,5,6,7,8,8,9,2,2,2]),
%%  io:format("~p~n", [Res]),
%%  Res =:= [[1,1,1],[2,2,2],[3,3],[4,4],[5],[6],[7],[8,8],[9],[2,2,2]].

pack(List)->
  pack(List, []).

pack([], Res) ->
  lists:reverse(Res);
pack([H | T], []) ->

  pack(T, [[H] | []]);
pack([H | T], [[RH | RHRest ] | TRes]) when H =:= RH -> % add to the existing sublist
  pack(T, [[[H | [RH | RHRest]] | TRes]]);
pack([H | T], [[RH | RHRest ] | TRes]) when H =/= RH -> % add a new sublist to the result
  pack(T, [[H] | [[RH | RHRest] | TRes]]).
