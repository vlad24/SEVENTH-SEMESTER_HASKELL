p 1 = 1
p x = pReccurent x x where
                          pReccurent n k | (n == 0) && (k == 0)  = 1
                                         | (k == 0)              = 0
                                         | (k <= n)              = (pReccurent n (k - 1)) + (pReccurent (n - k) k)
                                         | (k > n)               = pReccurent n n