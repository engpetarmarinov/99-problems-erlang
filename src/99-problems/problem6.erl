%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Find out whether a list is a palindrome.
%%% A palindrome can be read forward or backward; e.g. (x a m a x).
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem6).
-author("petarmarinov").

%% API
-export([palindrome/1]).

palindrome(List) ->
  List == lists:reverse(List). %% BIF: lists:reverse(List)
