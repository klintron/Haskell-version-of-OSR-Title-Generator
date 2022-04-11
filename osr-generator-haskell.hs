import System.Random

adjective1 = ["The Bleak ","The Ruined ","The Infernal ","The Shadow ","The Impenetrable ","The Crystalline ","The Crimson ","The Invisible ","The Frozen ","The Sunken ","The Delirious ","The Colossal ","The Vengeful ","The Solemn ","The Luminous ","The Mocking ","The Baffling ","The Scorched ","The Infested ","The Silent "]

location = ["Ziggurat ","Shrine ","Manse ","Woods ","Domain ","Plane ","Crypt ","Keep ","Fortress ","City ","Swamp ","Maze ","Dome ","Spire ","Oubliette ","Hell ","Wreckage ","Hamlet ","Cavern ","Corridore "]

adjective2 = [
    "of the Twisted ",
    "of the Ashen ",
    "of the Unknowable ",
    "of the Immaculate ",
    "of the Desperate ",
    "of the Forsaken ",
    "of the Mutant ",
    "of the Burning ",
    "of the Stone ",
    "of the Dreaming ",
    "of the Beast ",
    "of the Excommunicated ",
    "of the Lustful ",
    "of the Doomed ",
    "of the Nightmare ",
    "of the Esoteric ",
    "of the Tormented ",
    "of the Spectral ",
    "of the Bloodthirsty ",
    "of the Malicious "
             ]

noun = [
     "Witch",
    "Necromancer",
    "Cult",
    "Regiment",
    "Druid",
    "Throne",
    "Horror",
    "Basilisk",
    "Ork",
    "Warlord",
    "Reavers",
    "Godling",
    "Coward",
    "Reptile",
    "Golem",
    "Wastes",
    "Imp",
    "Wraith",
    "Gem",
    "Mother"
       ]

main = do  
    gen <- getStdGen  
    let randomadjective1Number = take 1 (randomRs (1, length adjective1-1) gen) !! 0

    gen' <- newStdGen
    let randomLocationNumber = take 1 (randomRs (1, length location-1) gen) !! 0

    gen <- newStdGen  
    let randomadjective2Number = take 1 (randomRs (1, length adjective2-1) gen) !! 0

    gen' <- newStdGen
    let randomNounNumber = take 1 (randomRs (1, length noun-1) gen) !! 0

    let adventure = adjective1 !! randomadjective1Number ++ location !! randomLocationNumber ++ adjective2 !! randomadjective2Number ++ noun !! randomNounNumber
    
    putStrLn adventure