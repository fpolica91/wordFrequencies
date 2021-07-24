module Main where
import Data.List
import Data.Char

main :: IO ()
main = do
  putStrLn "hello world"


{-|
  the function wordFrequencies will receive a string like this
  "It was the best of times, it was the worst of times,"
  it needs to return an array of tuples [( )] with the word and how many times it occurs on the text.

  first we will remove any character that is not a letter or a space and lowercase it with the function clean

  the next step is to split the string into words and sort them alphabetically. at the same time we will group like words together

  lastly we will construct our tuple using a map function 
  we will take the head of the array as the first argument of the tuple and use the length function to get the times of occurences of the given word


  step 1 -> clean will give us "it was the best of times it was the worst of times"

  we will take the result from clean and use it on groupAndSort
  as explained before groupAnSort will give us the split string, or a list of strings sort them alphabetically and group them, see below:
  [["best"],["it","it"],["of","of"],["the","the"],["times","times"],["was","was"],["worst"]]

  lastly we will use the construct tuple 
  in this case xs head on ["it","it"] is the same as getting "it" the first item. and save it on the tuple ("it"), next we will find the length of the list ["it", "it"] = 2 and add it to the tuple giving us ("it",2)



-}

clean = filter(\x -> isLetter x || x == ' ') . map toLower

groupAndSort items = (group . sort . words) items

constructTuple s = map (\xs -> (head xs, length xs)) s


wordFrequencies s = 
    let cleaned = clean s
        groupedWords = groupAndSort cleaned
    in constructTuple groupedWords



