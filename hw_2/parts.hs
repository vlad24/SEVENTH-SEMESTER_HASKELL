parts []  = False
parts [x] = False
parts (x:xs) = upDividerLengthUnknown x xs 1 (x:xs) where 
   upDividerLengthUnknown current   []   len  list = True                                                                                                --One increasing block!
   upDividerLengthUnknown current (y:ys) len  list = if (y > current) then upDividerLengthUnknown y ys (len + 1) list else upDivider list len False where
      upDivider []   maxLen blockFound = blockFound                                                                                       --Look whether we have already found
      upDivider list maxLen blockFound = upLauncher list 2 maxLen where 
	      upLauncher (u:us) iterLen maxLen | (iterLen > maxLen)        = False
                                   		   | (mod maxLen iterLen /= 0) = upLauncher (u:us) (iterLen + 1) maxLen
										   | otherwise                 = if (upLoop u us iterLen 1) then True else upLauncher (u:us) (iterLen + 1) maxLen where
                                                                                     upLoop cur   []   neededLen len = (neededLen == len)
                                                                                     upLoop cur (u:us) neededLen len | (neededLen > len)  = if (cur < u) then upLoop u us neededLen (len + 1) else False
                                                                                                                     | (neededLen == len) = upLoop cur (u:us) neededLen 1