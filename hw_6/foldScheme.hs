data Scheme = Element Float | Sequential Scheme Scheme | Parallel Scheme Scheme 

foldScheme f acc (Element r) = f acc r
foldScheme f acc (Sequential seq1 seq2) = foldScheme f (foldScheme f acc seq1) (seq2)
foldScheme f acc (Parallel   par1 par2) = foldScheme f (foldScheme f acc par1) (par2)


countElementsF x y = x + 1

test = foldScheme countElementsF 0 (Parallel (Element 2) (Sequential (Element 1) (Element 1)))

