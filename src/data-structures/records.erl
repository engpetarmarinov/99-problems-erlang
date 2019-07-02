%%%-------------------------------------------------------------------
%%% @author petarmarinov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%% Example of records
%%% @end
%%% Created : 02. Jul 2019 08:50
%%%-------------------------------------------------------------------
-module(records).
-include_lib("records.hrl").
-compile(export_all).
-author("petarmarinov").


first_robot() ->
  #robot{
    name="Mechatron",
    type=handmade,
    details=["Moved by a small man inside"]
  }.
