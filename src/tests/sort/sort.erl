%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2019 15:23
%%%-------------------------------------------------------------------
-module(sort).
-author("petarmarinov").

  -import(merge,[sort/1]).

%% API
-export([test/0]).

test() ->
  %% Merge sort
  UnorderedList = [7,3,2,10,16,23,2,3,1,87],
  io:format("Merge sort: UnorderedList: ~p, merge:sort(UnorderedList) -> ~p", [UnorderedList, merge:sort(UnorderedList)]).
