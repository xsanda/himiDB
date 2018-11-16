module Data.Database.Database(Database(..)) where

import Data.Database.Table(Table(..))

data Database = Database
  { getTables :: [Table]
  }

createTable :: String -> Database -> Database
createTable name db = Database (Table : getTables db)

describeTable :: String -> Database -> Maybe String
describeTable name database = case getTables database of
  [] -> Nothing
  table : ts
    | name == name -> Just ""
    | otherwise    -> Nothing
