import Prelude

circle :: Integer -> Integer -> Float -> Float -> IO ()

circle cx cy r step = mapM_ (putStrLn . f) points
	where
		f [x, y] = (show $ toInteger x) ++ " " ++ (show $ toInteger y)
		points = [[cx+x, cy+y] | theta <- [0,step..2*pi], 
					 let x = toInteger . floor $ r*(cos theta),
					 let y = toInteger . floor $ r*(sin theta)]
					 
