defmodule Hangman.Impl.Game do
 
 @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used

 @type t :: %__MODULE__{
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used: Mapset.t(String.t),
 }
 defstruct(
   turns_left: 7,
   game_state: :initializing,
   letters: [],
   used: MapSet.new(),
 )

 def new_game do
   %__MODULE__{
      letters: Dictionary.random_word |> String.codepoints
   }
 end

 def new_game(word) do
   %__MODULE__{
      letters: word |> String.codepoints
   }
 end

end
