%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Tree lib
%%% @end
%%% Created : 02. Jul 2019 15:50
%%%-------------------------------------------------------------------
-module(tree).
-author("petarmarinov").

-define(NODE_KEY, node).
-define(EMPTY_TREE, {?NODE_KEY, nil}).
%%Template: {?NODE_KEY, {Key, Value, NodeLeft, NodeRight}}

%% API
-export([empty/0,insert/2,print/1]).

empty() ->
  ?EMPTY_TREE.

insert(NewTree, ?EMPTY_TREE) ->
  NewTree;
insert(NewTree = {?NODE_KEY, {NewKey, _NewVal, _NewNodeLeft, _NewNodeRight}}, {?NODE_KEY, {Key, Value, NodeLeft, NodeRight}}) when NewKey < Key ->
  {?NODE_KEY, {Key, Value, insert(NewTree, NodeLeft), NodeRight}};
insert(NewTree = {?NODE_KEY, {NewKey, _NewVal, _NewNodeLeft, _NewNodeRight}}, {?NODE_KEY, {Key, Value, NodeLeft, NodeRight}}) when NewKey >= Key ->
  {?NODE_KEY, {Key, Value, NodeLeft, insert(NewTree, NodeRight)}}.

%% PRINT
print(Tree) ->
 print(Tree, 0).

print(?EMPTY_TREE, _) ->
  ok;
print({?NODE_KEY, {Key, Value, LeftTree, RightTree}}, IndentationNum) ->
  print_identation(IndentationNum),
  io:format("~p~n",[{Key, Value}]),
  print(LeftTree, IndentationNum + 5),
  print(RightTree, IndentationNum + 5).

print_identation(0)->ok;
print_identation(IndentationNum) ->
  io:format(" "),
  print_identation(IndentationNum - 1).
