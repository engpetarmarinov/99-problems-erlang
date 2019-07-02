-module(recordstests).
-include_lib("eunit/include/eunit.hrl").
-include_lib("../../data-structures/records.hrl").
-author("petarmarinov").

records_test() ->
  ?assertEqual(
    {
      robot,
      "Mechatron",
      handmade,
      undefined,
      ["Moved by a small man inside"]
    },
  records:first_robot()).

record_robot_property_dot_syntax_test() ->
  Robot = records:first_robot(),
  ?assertEqual("Mechatron", Robot#robot.name),
  ?assertEqual(handmade, Robot#robot.type),
  ?assertEqual(undefined, Robot#robot.hobbies),
  ?assertEqual(["Moved by a small man inside"], Robot#robot.details).
