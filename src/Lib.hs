module Lib where

import Data.Maybe

invertical :: Int -> Int -> Maybe Int
invertical k md = fmap snd $ listToMaybe $ filter (\(a, b) -> a == 1) $ zip (flip mod md . (*k) <$> domain) domain
    where
        domain = [0 .. md - 1]