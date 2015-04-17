%% @copyright 2015 KOU_CHANG All Rights Reserved.
%%
%% @doc Find the sum of all the multiples of 3 or 5 below Max
-module(probrem_1).

%%----------------------------------------------------------------------------------------------------------------------
%% Exported API
%%----------------------------------------------------------------------------------------------------------------------
-export([
         sum_of_all_multiples_of_3_or_5/1
        ]).

-export_type([
             ]).

%%----------------------------------------------------------------------------------------------------------------------
%% Macros & Records & Types
%%----------------------------------------------------------------------------------------------------------------------

%%----------------------------------------------------------------------------------------------------------------------
%% Exported Functions
%%----------------------------------------------------------------------------------------------------------------------
sum_of_all_multiples_of_3_or_5(Max) ->
    lists:foldl(fun (I, Sum) ->
                        case I rem 3 =:= 0 orelse I rem 5 =:= 0 of
                            true ->
                                Sum + I;
                            false ->
                                Sum
                        end
                end, 0, lists:seq(1, Max-1)).

%%----------------------------------------------------------------------------------------------------------------------
%% Internal Function
%%----------------------------------------------------------------------------------------------------------------------