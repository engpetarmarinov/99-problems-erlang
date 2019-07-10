-module(treetests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

-define(NODE_KEY, node).
-define(EMPTY_TREE, {?NODE_KEY, nil}).

insert_to_the_left_test() ->
  ?assertEqual(
    {?NODE_KEY,
      {3, 'X',
        {?NODE_KEY,{2, 'X', ?EMPTY_TREE, ?EMPTY_TREE}},
        ?EMPTY_TREE
      }
    },
    tree:insert({?NODE_KEY, {2, 'X', ?EMPTY_TREE, ?EMPTY_TREE}}, {?NODE_KEY, {3, 'X', ?EMPTY_TREE, ?EMPTY_TREE}})).

insert_to_the_right_test() ->
  ?assertEqual(
    {?NODE_KEY,
      {3, 'X',
        ?EMPTY_TREE,
        {?NODE_KEY,{4, 'X', ?EMPTY_TREE, ?EMPTY_TREE}}
      }
    },
    tree:insert({?NODE_KEY, {4, 'X', ?EMPTY_TREE, ?EMPTY_TREE}}, {?NODE_KEY, {3, 'X', ?EMPTY_TREE, ?EMPTY_TREE}})).

insert_to_the_right_subtree_test() ->
  ?assertEqual(
    {?NODE_KEY,
      {3, 'X',
        ?EMPTY_TREE,
        {?NODE_KEY,
          {4, 'X',
            ?EMPTY_TREE,
            {?NODE_KEY, {5, 'X', ?EMPTY_TREE, ?EMPTY_TREE}}
          }
        }
      }
    },
    tree:insert(
      {?NODE_KEY, {5, 'X', ?EMPTY_TREE, ?EMPTY_TREE}},
      {?NODE_KEY,
        {3, 'X',
          ?EMPTY_TREE,
          {?NODE_KEY,{4, 'X', ?EMPTY_TREE, ?EMPTY_TREE}}
        }
      })).
