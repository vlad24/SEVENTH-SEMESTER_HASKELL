changer x = if (x == '!') then '?' else if (x == '?') then '!' else x

swapSymbols = map changer