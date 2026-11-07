module Sudoku.Board where

import Sudoku.Types

-- Crea un tablero de Sudoku vacio.
emptyBoard :: Board
emptyBoard = replicate boardSize (replicate boardSize Nothing)

-- Obtiene un elemento de una lista si el indice es valido.
safeIndex :: [a] -> Int -> Maybe a
safeIndex xs index
    | index < 0 = Nothing
    | otherwise =
        case drop index xs of
            []    -> Nothing
            (x:_) -> Just x

-- Obtiene una casilla del tablero.
getCell :: Board -> Int -> Int -> Maybe Cell
getCell board row col =
    case safeIndex board row of
        Nothing -> Nothing
        Just selectedRow -> safeIndex selectedRow col