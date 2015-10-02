checkSumMono list = smartSumChecker list (reverse $ list) 0 (length(list) - 1) 10 where
  smartSumChecker [] _ _ _ _  = False
  smartSumChecker _ [] _ _ _  = False
  smartSumChecker (b:bs) (d:ds) leftI rightI aimSum | (leftI >= rightI) = False
                                                    | otherwise = if (b + d == aimSum) then True else
                                                                  if (b + d  > aimSum) then smartSumChecker (b:bs) ds leftI (rightI - 1) aimSum else
                                                                                            smartSumChecker bs (d:ds) (leftI + 1) rightI aimSum
