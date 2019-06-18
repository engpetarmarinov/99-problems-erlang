%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Reverse a list
%%% Example:
%%% λ> myReverse "A man, a plan, a canal, panama!"
%%% "!amanap ,lanac a ,nalp a ,nam A"
%%% λ> myReverse [1,2,3,4]
%%% [4,3,2,1]
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem5).
-author("petarmarinov").

%% API
-export([reverse/1]).

reverse(List) ->
  %% Tail recursion
  reverse_private(List, []). %% BIF: lists:reverse(List)

reverse_private([], Result) ->
  Result;

reverse_private([H|Rest], Result) ->
  reverse_private(Rest, [H|Result]).