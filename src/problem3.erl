%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Find the K'th element of a list. The first element in the list is number 1.
%%% Example: element_at [1,2,3] 2 -> 2
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem3).
-author("petarmarinov").

%% API
-export([element_at/2]).

element_at([First|_], 1) ->
  First;
element_at([_|Tail], N) ->
  case length(Tail) < N of
    true -> undefined;
    false -> element_at(Tail, N-1)
  end.
