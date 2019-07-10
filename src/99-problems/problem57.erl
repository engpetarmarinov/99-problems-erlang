%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Construct a binary search tree from a list of integer numbers
%%% Example: construct([3,2,5,7,1],T).
%%% T = t(3, t(2, t(1, nil, nil), nil), t(5, nil, t(7, nil, nil)))
%%          3
%%         / \
%%       2    5
%%      /      \
%%     1        7
%%% @end
%%% Created : 02. Jul 2019 15:00
%%%-------------------------------------------------------------------
-module(problem57).
-author("petarmarinov").

-import(tree,[insert/2,empty/0]).
%% API
-export([construct/1]).

construct(List) ->
  construct(List, tree:empty()).

construct([], Tree) ->
  Tree;
construct([H|TList], {node, nil}) ->
  Tree = tree:insert({node, {H, $X, tree:empty(), tree:empty()}}, tree:empty()),
  construct(TList, Tree);
construct([H|TList], Tree) ->
  construct(TList, tree:insert({node, {H, $X, tree:empty(), tree:empty()}}, Tree)).
