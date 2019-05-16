module Main exposing (main)

import Browser exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



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



-- Update


update : Msg -> Model -> Model
update msg model =
    case msg of
        NewCounter ->
            model ++ [ 0 ]

        Increment index ->
            List.indexedMap
                (\idx count ->
                    if idx == index then
                        count + 1

                    else
                        count
                )
                model

        Decrement index ->
            List.indexedMap
                (\idx count ->
                    if idx == index then
                        count - 1

                    else
                        count
                )
                model

        DeleteCounter index ->
            let
                front =
                    List.take index model

                back =
                    List.drop (index + 1) model
            in
            front ++ back

-- View

view : Model -> Html Msg
view model =
    button [onClick NewCounter] [text "New counter"]