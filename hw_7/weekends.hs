checkWeekends list = (filter (\p -> (snd p > 5) && (fst p > 1)) (zip list (cycle [1..7]))) == []
