%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Modified run-length encoding.
%%% Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
%%%
%%% Example:
%%* (encode-modified '(a a a a b c c a a d e e e e))
%%% ((4 A) B (2 C) (2 A) D (4 E))
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem11).
-author("petarmarinov").
-import(problem10, [encode/1]).

%% API
-export([encode_modified/1]).

encode_modified(List)->
  encode_modified(problem10:encode(List), []).

encode_modified([], Result) ->
  lists:reverse(Result);
encode_modified([H | T], Result) ->
  encode_modified(T, [get_result_list_or_element(H) | Result]).

get_result_list_or_element([NumberOfElements | [Element]]) when NumberOfElements =:= 1 ->
  Element;
get_result_list_or_element(ResultList) ->
  ResultList.
