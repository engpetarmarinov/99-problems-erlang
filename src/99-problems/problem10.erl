%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method.
%%% Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
%%% * (encode '(a a a a b c c a a d e e e e))
%%% ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem10).
-author("petarmarinov").
-import(problem9, [pack/1]).

%% API
-export([encode/1]).

encode(List)->
  encode(problem9:pack(List), []).

encode([], Result) ->
  lists:reverse(Result);
encode([H | T], Result) ->
  [FirstH | _] = H,
  encode(T, [[length(H) | [[FirstH]]] | Result]).
