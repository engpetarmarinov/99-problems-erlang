-module(insertiontests).
-include_lib("eunit/include/eunit.hrl").
-author("petarmarinov").

sort_test() ->
  ?assertEqual([1,2,3,4,5,6,7,8,9,10], insertion:sort([8,10,1,2,3,7,4,5,6,9])).

sort_even_numbers_test() ->
  ?assertEqual([1,2,3,4,5,6,7,8,9], insertion:sort([8,1,2,3,7,4,5,6,9])).

sort_negative_numbers_test() ->
  ?assertEqual([-10,-7,0,1,2,3,4,5,6,7,8,9], insertion:sort([8,1,2,3,0,7,-7,4,5,-10,6,9])).

sort_string_test() ->
  ?assertEqual("abcdef", insertion:sort("fbaced")).

lists_sort_and_insertion_sort_do_the_same_test() ->
  String = "dfrN7VDWHrpBtbIjBXZTf61fh64I4WqcZVu0MWgNciggqdBLKUn3JAYP6Mqm6AqXsZjeDdXNGMXYagO1dWo9t19QtaGKqAvrUuwEo08VkaLwOFiw8gi9nbcyRAiAODRSnrDdjRvBfI6xUppZoM77LfHdH3E1J2MO8zEdVC4PJIFoyd8o4IoqQSKBUWXho8mtxde0JOZ3t2MpaCrzOfseF3oDFFmmNZ0CdLVT1igojg3s4b7HaxMzZM1QIre2DDh7ilFMXyKudAIpU96S2vxxTNz5kty5xdlXEr6KTggWxYjdyKZRcShyY1gL76HAko818yWpM8zTs4DPURqBw6uBgGQZRcjr9ZwyMJZdbx10rfrSpRLRvzUK35C8T280gVeMSqrrpb0Ux4GHpl3mR7JHUfrU0fZTGmqA8mq0jccBiM3bXDkNb02ekY3As4NPiQeT9XsuspnudLbBmEmya0zCowyzJiO9sxa8WQiCShuuQ0XA1qtVjSF2nXml8MlWRRCu0jNlqqQNWeFf83ccomc9tekGXvLYDI5bV8EBE8M5Z4gM8eReY2M3EYOaIYpLN7v6db8quQ9xI8mErmF81KLukyQyINywNVdtUXLTk84aCHGgmne0Pair0rH1KQ6HWaXGq7MngNitNsCHTUNkSHruvzH0uTxvWdPXtIibxeMam9tc6zhXTRU9xV9Z4nYfIm9UOdejfyRQHW5BeQKEqRAwakFYZJitRB0ehlCfETybeuoT16oH6la6mw1dtGyWxyRK5IAgTtcrRIU0SRUFPY3EvvjkbmdxLiip",
  ?assertEqual(lists:sort(String), insertion:sort(String)).
