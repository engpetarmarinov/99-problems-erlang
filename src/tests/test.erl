%%%-------------------------------------------------------------------
%%% @author knikolov
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2019 09:54
%%%-------------------------------------------------------------------
-module(test).
-author("knikolov").

-define(EXT, "tests.erl"). % file extension to look for
-define(TESTS_DIR, "./src/tests/99-problems").

%% API
-export([start/0]).

start() ->
  dir(?TESTS_DIR).
dir(TestsPath) ->
  FilesList = module_list(TestsPath),
  [compile(X) || X <- FilesList],
  Tokens = tokens(FilesList),
  test_all(Tokens),
  ok.

%% assumes pre-compiled modules
test_all(Tokens) ->
  io:format("Start All~n"),
  [test_single(Token) || Token <- Tokens],
  io:format("End All~n").

test_single({F, T}) ->
  io:format(" > ~p, Module: ~p~n", [F, T]),
  (list_to_existing_atom(T)):test().

tokens(FilesList) ->
  Split = [{ File, lists:nth(1, string:tokens(File, ".")) } || File <- FilesList],
  [{Path, lists:last(string:tokens(File, "./"))}|| {Path, File} <- Split].

%% get module .erl file names from a directory
module_list(Path) ->
  SameExt = fun(File) -> get_ext(File) =:= ?EXT end,
  Files = list_files_recursive(Path),
  lists:filter(SameExt, Files).

list_files_recursive(Path) ->
  list_files_recursive(Path, file:list_dir(Path), []).

list_files_recursive(Path, {error, _}, Files) ->
  [Path | Files];
list_files_recursive(Path, PathList, Files) ->
  {ok, PathContents} = PathList,
  loop(Path, PathContents, Files).

loop(_, [], Files) -> Files;
loop(Path, [Content|PathContents], Files) ->
  list_files_recursive(Path ++ "/" ++ Content, file:list_dir(Path ++ "/" ++ Content), Files) ++
  loop(Path, PathContents, Files).

%% find the extension of a file (length is taken from the ?EXT macro).
get_ext(Str) ->
  lists:reverse(string:sub_string(lists:reverse(Str), 1, length(?EXT))).

compile(FileName) ->
  compile:file(FileName, [report, verbose, export_all]).
