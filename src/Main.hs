module Main where

import API
import Servant.Client

main :: IO ()
main = do
  putStrLn "hello world"

myApi :: Proxy MyApi
myApi = Proxy

getAllBooks :: ClientM [Book]
postNewBook :: Book -> ClientM Book

(getAllBooks :<|> postNewBook) = client myApi


