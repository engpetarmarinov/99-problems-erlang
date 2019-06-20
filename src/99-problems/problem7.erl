%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Flatten a nested list structure.
%%% Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
%%% Example: (my-flatten '(a (b (c d) e)))-> (A B C D E)
%%% @end
%%% Created : 18. Jun 2019 15:25
%%%-------------------------------------------------------------------
-module(problem7).
-author("petarmarinov").

%% API
-export([flatten/1]).

flatten(List) ->
  lists:flatten(List).
