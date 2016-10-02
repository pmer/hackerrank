-module(solution).
-export([main/0]).

main() ->
	{_, [N]} = io:fread("", "~d"),
	lists:map(fun(_) -> io:format("Hello World\n") end, lists:seq(1, N)).
