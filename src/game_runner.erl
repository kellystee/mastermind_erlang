-module(game_runner).
-export([call/0]).



call() ->
  mastermind:start(),
  play_again().




play_again() ->
  Result = prompter:play_again(),
  play_again(Result).



play_again("y") ->
  call();

play_again("n") ->
  ok.