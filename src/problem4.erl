%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Find the number of elements of a list.
%%% Example: my_length [123, 456, 789] -> 3
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem4).
-author("petarmarinov").

%% API
-export([my_length/1]).

my_length(Arr) ->
  private_length(Arr, 0). %% BIF: length(Arr)

private_length([], N) ->
  N;
private_length([_|[]], N) ->
  N+1;
private_length([_|T], N) ->
  private_length(T, N+1).
