%% calculator.erl
%%
%% Assignment 6
%% calculator.erl is the first file in assignment 6. It is a
%% program written in Erlang, and its purpose is to help us
%% learn the basic syntax and functionality of the language.

%% Part 3 - Simple Modules
%% provides basic calculator functionality
-module(calculator).
-import(math, [pow/2]).
-export([add/2, subtract/2, multiply/2, divide/2, exp/2]).

%% Adds two numbers and returns the result
add(A, B) -> A + B.

%% Subtracts two numbers and returns the result
subtract(A, B) -> A - B.

%% Multiplies two numbers and returns the result
multiply(A, B) -> A * B.

%% Divides two numbers and returns the result
divide(A, B) -> A / B.

%% Takes a base and power, and returns the exponential
exp(A, B) -> pow(A, B).
