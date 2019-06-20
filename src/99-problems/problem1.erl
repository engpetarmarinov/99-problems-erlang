%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Find the last element of a list.
%%% Example: last [1,2,3,4] -> 4
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem1).
-author("petarmarinov").

%% API
-export([last/1]).

last([]) ->
  nil;
last([First|Rest]) when Rest == [] ->
  First;
last([_|Rest]) ->
  last(Rest).
