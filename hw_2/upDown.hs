upDown []  = False
upDown [x] = False
upDown [x,y] = False
upDown (x:y:ys) = upCheck (y:ys) x where
                                         upCheck [] current     = False
                                         upCheck (y:ys) current = if (y > current) then upCheck ys y else downCheck ys y where
                                                                                                                                 downCheck [] current = True
                                                                                                                                 downCheck (y:ys) current = if (y < current) then downCheck ys y else False