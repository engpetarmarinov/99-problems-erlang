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
-import(problem4,[my_length/1]).
-import(problem5,[reverse/1]).
-import(problem6,[palindrome/1]).

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
  io:format("problem3-> OrderedList: ~p, ~p, problem3:last_but_last(OrderedList)->~p~n", [OrderedList, 4, problem3:element_at(OrderedList,4)]),
  io:format("problem3-> OrderedList: ~p, ~p, problem3:last_but_last(OrderedList)->~p~n", [OrderedList, 11, problem3:element_at(OrderedList,11)]),
  %%Problem 4
  io:format("problem4-> OrderedList: [], problem4:my_length([])->~p~n", [problem4:my_length([])]),
  io:format("problem4-> OrderedList: [1], problem4:my_length([1])->~p~n", [problem4:my_length([1])]),
  io:format("problem4-> OrderedList: ~p, problem4:my_length(OrderedList)->~p~n", [OrderedList, problem4:my_length(OrderedList)]),
  %%Problem 5
  DummyString = "I love popcorn.",
  io:format("problem5-> DummyString: ~p, problem5:reverse(DummyString)->~p~n", [DummyString, problem5:reverse(DummyString)]),
  io:format("problem5-> OrderedList: ~p, problem5:reverse(OrderedList)->~p~n", [OrderedList, problem5:reverse(OrderedList)]),
  %%Problem 6
  PalindromeList = "abbba",
  NonPalindromeList = "12354321",
  io:format("problem6-> NonPalindromeList: ~p, problem6:palindrome(NonPalindromeList)->~p~n", [NonPalindromeList, problem6:palindrome(NonPalindromeList)]),
  io:format("problem6-> PalindromList: ~p, problem6:palindrome(PalindromList)->~p~n", [PalindromeList, problem6:palindrome(PalindromeList)]),
  %%Problem 7
  DeepList = [1,2,[3,[4,5,6,[7,8,9]]]],
  io:format("problem7-> DeepList: ~p, problem7:flatten(DeepList)->~p~n", [DeepList, problem7:flatten(DeepList)]).
