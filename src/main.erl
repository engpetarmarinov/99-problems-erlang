%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Main module
%%% @end
%%% Created : 18. Jun 2019 15:31
%%%-------------------------------------------------------------------
-module(main).
-author("petarmarinov").
-import(problem1,[last/1]).
-import(problem2,[last_but_last/1]).
-import(problem3,[element_at/2]).

%% API
-export([start/0]).

start() ->
  %%Problem 1
  List = [213,21321,64,21321,3213,2],
  io:format("problem1-> List: ~p, problem1:last(List)->~p~n", [List, problem1:last(List)]),
  %%Problem 2
  io:format("problem2-> List: ~p, problem2:last_but_last(List)->~p~n", [List, problem2:last_but_last(List)]),
  %%Problem 3
  OrderedList = [1,2,3,4,5,6,7,8,9],
  io:format("problem3-> OrderedList: ~p, ~p, problem3:last_but_last(List)->~p~n", [OrderedList, 4, problem3:element_at(OrderedList,4)]),
  io:format("problem3-> OrderedList: ~p, ~p, problem3:last_but_last(List)->~p~n", [OrderedList, 11, problem3:element_at(OrderedList,11)]).
