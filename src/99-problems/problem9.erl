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
  pack(List, [], []).

%% Empty List
pack([], _, Res) ->
  lists:reverse(Res);

%% Empty Last and Result
pack([H | T], [], []) ->
  pack(T, H, [[H] | []]);

pack([H | T], Last, [RH | RT ]) when Last =/= H ->
  pack(T, H, [[H] | [RH | RT ]]);

pack([H | T], Last, [RH | RT ]) when Last =:= H ->
  pack(T, H, [[H | RH] | RT]).
