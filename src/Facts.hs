module Facts where

import Control.Lens
import Datatypes



sam = Person "Sam" "White" (Just "Kate") (Parents (Left "John") (Left "Sarah"))

kate = Person "Kate" "Hudson" (Just "Sam") (Parents (Left "William") (Left "Vanessa"))

anthony = Person "Anthony" "Blake" Nothing (Parents (Right sam) (Right kate))

rex = D $ Dog "Rex" "Bulldog" (Just sam)

puddle = C $ Cat "Puddle" "Bengal" (Just kate)

ice = Chin $ Chinchilla "Ice" (Just anthony)

updateDogRace :: String -> Animal -> Animal
updateDogRace race = _D . _1 . dogRace.~ race