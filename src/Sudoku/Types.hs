module Sudoku.Types where

-- Una casilla puede contener un numero o estar vacia.
type Cell = Maybe Int

-- Un tablero es una lista de filas.
-- Cada fila es una lista de casillas.
type Board = [[Cell]]

-- Dimensiones del tablero.
boardSize :: Int
boardSize = 9
