module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
    Html.beginnerProgram { model = model, view = view, update = update }


type alias Comment =
    { content : String
    , likes : Int
    , done : Bool
    }


type alias Model =
    List Comment


model : Model
model =
    []


type Msg
    = Add Comment


update : Msg -> Model -> Model
update msg model =
    case msg of
        Add comment ->
            model ++ [ comment ]


view model =
    div [] [ button [ onClick Add { content = "", likes = 0, done = False } ] [ text "+" ] ]
