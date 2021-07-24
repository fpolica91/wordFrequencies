{-
  The input is a list with elements of type a and the output is a value of type b.
There is a base value z (e.g. 0, []) which is the result on the empty list.

The final result is computed by going over the input list element by element and modifying an accumulator. Starting with the base value z as the accumulator, a folding function f (e.g. +, ++) 
is used to combine the accumulator with successive list elements.

-}
import Data.List

conc :: [[a]] -> [a]
conc [] = []
conc (xs:xss) = xs ++ conc xss




sum_list xs = foldr (+) 0 xs

_all xs = foldr (&&) True xs

_any xs = foldr (||) False xs

_product [] = 0;
_product xs = foldr(*) 1 xs