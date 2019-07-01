%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2019 15:24
%%%-------------------------------------------------------------------
-module(merge).
-author("petarmarinov").

%% API
-export([sort/1]).

sort(List) ->
  SplitLists = split(List, []),
  merge(SplitLists, []).

split([], Result) ->
  lists:reverse(Result);
split([H | T], Result) ->
  split(T, [ [H] | Result]).

% Iterate all split lists
merge(Lists, Result) ->
  merge(Lists, Result, length(Result)).

merge([], Result, ResultLen) when ResultLen > 1 ->
  merge(Result, []);
merge([], [SortedList | []], ResultLen) when ResultLen =:= 1 ->
  SortedList;
merge([], Result, _) ->
  lists:reverse(Result);
merge([L | []] , Result, _) ->
  merge([], [merge_two(L, [], []) | Result ]);
merge([L,R | T] , Result, _) ->
  merge(T, [merge_two(L, R, []) | Result ]).

% Merge two lists into one sorted
merge_two([], [], Result) ->
  lists:reverse(Result);
merge_two([LH | LT], [], Result) ->
  merge_two( LT, [], [ LH | Result]);
merge_two([], [RH | RT], Result) ->
  merge_two( [], RT, [ RH | Result]);
merge_two([LH | LT], [RH | RT], Result) when LH > RH ->
  merge_two( [LH | LT], RT, [ RH | Result]);
merge_two([LH | LT], [RH | RT], Result) when LH =< RH ->
  merge_two( LT, [RH | RT], [ LH | Result]).
