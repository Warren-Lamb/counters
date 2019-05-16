module Main exposing (main)

import Browser exposing (..)



-- Main


main : Program () Model Msg
main =
    Browser.sandbox
        { init = [ 0, 0 ]
        , view = view
        , update = update
        }



-- Model


type alias Model =
    List Int


type Msg
    = NewCounter
    | Increment Int
    | Decrement Int
    | DeleteCounter Int
