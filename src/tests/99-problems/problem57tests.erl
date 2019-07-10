-module(problem57tests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

%%       d
%%      / \
%%    a    f
%%     \    \
%%      b    q
%%       \
%%        c
construct_tree_from_list_chars_test() ->
  ?assertEqual(
    {node,
      { $d,$X,
        {node,
          {$a,$X,
            {node,nil},
            {node,
              {$b,$X,
                {node,nil},
                {node,{$c,$X,{node,nil},{node,nil}}}
              }
            }
          }
        },
        {node,
          {$f,$X,
            {node,nil},
            {node,{$q,$X,{node,nil},{node,nil}}}
          }
        }
      }
    },
    problem57:construct("dfabcq")).

%%       3
%%      / \
%%    2    5
%%   /    / \
%%  1    4   7
construct_tree_from_list_integers_test() ->
  ?assertEqual(
    {node,
      { 3,$X,
        {node,
          {2,$X,
            {node,{1,$X,{node,nil},{node,nil}}},
            {node,nil}
          }
        },
        {node,
          {5,$X,
            {node,{4,$X,{node,nil},{node,nil}}},
            {node,{7,$X,{node,nil},{node,nil}}}
          }
        }
      }
    },
    problem57:construct([3,2,5,7,1,4])).
