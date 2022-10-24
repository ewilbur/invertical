module Main (main) where

import Lib
import System.Environment
import Data.List

main :: IO ()
main = do
    args <- getArgs
    if length args /= 2
        then putStrLn "Error: two arguments needed, the number to take an inverse of and the modulus"
        else print $ invertical (read $ args !! 0) (read $ args !! 1)