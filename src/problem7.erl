%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Find out whether a list is a palindrome.
%%% A palindrome can be read forward or backward; e.g. (x a m a x).
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem7).
-author("petarmarinov").

%% API
-export([flatten/1]).

flatten(List) ->
  lists:flatten(List).
