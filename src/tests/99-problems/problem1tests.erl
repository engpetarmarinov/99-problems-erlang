%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2019 15:47
%%%-------------------------------------------------------------------
-module(problem1tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

-import(problem1,[last/1]).

find_last_test() ->
  List = [213,21321,64,21321,3213,2],
  ?_assert(problem1:last(List) == 2).

find_last_of_one_test() ->
  List = [2],
  ?_assert(problem1:last(List) == 2).

find_last_of_zero_test() ->
  List = [],
  ?_assert(problem1:last(List) == nil).

fail_test() ->
  List = [213,21321,64,21321,3213,2],
  ?_assert(problem1:last(List) =:= 2132).
