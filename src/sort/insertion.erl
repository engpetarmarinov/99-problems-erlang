%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Insertion Sort
%%% @end
%%% Created : 01. Jul 2019 15:11
%%%-------------------------------------------------------------------
-module(insertion).
-author("petarmarinov").

%% API
-export([sort/1]).

sort(List) ->
  insertion(List, []).

insertion([], SortedList ) ->
  lists:reverse(SortedList);
insertion([HUnsorted | TUnsorted ], [] ) ->
  insertion(TUnsorted, [HUnsorted]);
insertion([HUnsorted | TUnsortedList ], [HSorted | TSortedList] ) when HUnsorted < HSorted ->
  insertion(TUnsortedList, insert_into_sorted(HUnsorted, TSortedList, [HSorted]));
insertion([HUnsorted | TUnsortedList ], [HSorted | TSortedList] ) when HUnsorted >= HSorted ->
  insertion(TUnsortedList, [HUnsorted] ++ [HSorted | TSortedList]).

insert_into_sorted(Element, [HSorted | TSortedList], LeftList) when Element < HSorted ->
  insert_into_sorted(Element, TSortedList, LeftList++[HSorted]);
insert_into_sorted(Element, [HSorted | TSortedList], LeftList) when Element >= HSorted ->
  LeftList ++ [Element] ++ [HSorted | TSortedList];
insert_into_sorted(Element, [], LeftList) ->
  LeftList ++ [Element].
