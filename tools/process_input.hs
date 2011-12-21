import Data.List
import System.IO
import Control.Monad
import Control.Applicative
import Data.Function

type Coord = (Float, Float)
type IntCoord = (Integer, Integer)

readCoord :: String -> Coord
readCoord s = read $ "(" ++ s ++ ")" 

normalize :: Float -> Float -> Float -> Integer
normalize p m = toInteger . floor . (*p) . subtract m

normalizeAll :: [Float] -> [Integer]
normalizeAll xs = modxs
    where
        mi = minimum xs
        f = normalize 1000 mi
        modxs = map f xs

normalizeComponent :: [Coord] -> (Coord -> Float) -> [Integer]
normalizeComponent = (normalizeAll .) . flip map

showIntCoord :: IntCoord -> String
showIntCoord (x, y) = (show x) ++ " " ++ (show y)

main = do
    fc <- lines <$> readFile "input.txt"
    let coords = map readCoord fc
    let normalizer = normalizeComponent coords
    let coords' = zip (normalizer fst) (normalizer snd) 
    mapM_ (putStrLn . showIntCoord) coords'     
    return ()
