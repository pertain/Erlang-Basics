%% basic_module.erl
%%
%% Assignment 6
%% basic_module.erl is the second file in assignment 6. It is a
%% program written in Erlang, and its purpose is to help us
%% learn the basic syntax and functionality of the language.

%% Part 3 - Simple Modules
-module(basic_module).
-import(lists, [reverse/1]).
-import(string, [equal/2, to_lower/1]).
-export([light_mixing/3, palindrome/1]).


%% This function takes 3 values (values are 1 or 0) that
%% represent the primary colors of light (Red, Green, Blue).
%% Returns the name of the resulting color mixture.
light_mixing(0, 0, 1) -> "Blue";
light_mixing(0, 1, 0) -> "Green";
light_mixing(0, 1, 1) -> "Cyan";
light_mixing(1, 0, 0) -> "Red";
light_mixing(1, 0, 1) -> "Magenta";
light_mixing(1, 1, 0) -> "Yellow";
light_mixing(1, 1, 1) -> "White";
light_mixing(_, _, _) -> "Black".


%% This function checks if the given string is a palindrome.
%% It is case-insensitive (i.e. RacECar and racecar are equal).
palindrome(Word) -> equal(to_lower(Word),
                          to_lower(reverse(Word))).
