module MailCoordinator where

-- location specific functions for creating target names
usOffice name = if lname < "L"
    then target ++ " - 132, Bigtown BG23 4YZ, United States"
    else target ++ " - 412, Kingston, New York 12401, United States"
    where lname = snd name
          target = (fst name) ++ " " ++ (snd name)

engOffice name = target ++ 
            ": 312, 75N Southern Street, London NW5 9XE, England"
    where target = (fst name) ++ " " ++ (snd name)

ausOffice name = target ++ 
            " - 86 Baker St.North, Sydney NSW 2156, Australia"
    where target = (fst name) ++ " " ++ (snd name)

-- Choose neccessary function and return it
getLocationFunction location = 
    case location of
        "us" -> usOffice
        "eng" -> engOffice
        "aus" -> ausOffice
        _ -> (\name -> (fst name) ++ " " ++ (snd name)) -- default case

-- main
addressLetter name location = locationFunc name
    where locationFunc = getLocationFunction location

