%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Find the last but one element of a list.
%%% Example: last_but_last [1,2,3,4] -> 3
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem2).
-author("petarmarinov").

%% API
-export([last_but_last/1]).

last_but_last([First|[_]]) ->
  First;
last_but_last([_|Rest]) ->
  last_but_last(Rest).
