%% recursion.erl
%%
%% Assignment 6
%% recursion.erl is the third file in assignment 6. It is a
%% program written in Erlang, and its purpose is to help us
%% learn the basic syntax and functionality of the language.

%% Part 3 - Simple Modules
-module(recursion).
-import(lists, [zipwith/3, reverse/1]).
-import(file, [write_file/2]).
-import(io_lib, [fwrite/2]).
-export([calc_pascal/1, pascal/1]).

%% This function takes a number, Nth_line, which represents
%% the number of lines to calculate in Pascal's triangle.
calc_pascal(1) -> [[1]];
calc_pascal(Nth_line) ->
	Prev = calc_pascal(Nth_line - 1),
	[Hd|_] = Prev,
	[zipwith(fun(X, Y) -> X + Y end, [0] ++ Hd, Hd ++ [0])|Prev].


%% Prints the results of calc_pascal to Pascal.txt
pascal(N) -> write_file("Pascal.txt",
						fwrite("~190p~n", [reverse(calc_pascal(N))])).
