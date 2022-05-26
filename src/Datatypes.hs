{-# LANGUAGE TemplateHaskell #-}

module Datatypes where

import Control.Lens.TH



data Parent a = Parents {
    _parentMale :: Either String a,
    _parentFemale :: Either String a
} deriving (Show, Eq, Ord)

makeLenses ''Parent

data Person = Person {
    _personName :: String,
    _personLastName :: String,
    _personSpouse :: Maybe String,
    _personParents :: Parent Person
} deriving (Show, Eq, Ord)

makeLenses ''Person


data Dog = Dog {
    _dogName :: String,
    _dogRace :: String,
    _dogOwner :: Maybe Person
} deriving (Show, Eq, Ord)

makeLenses ''Dog

data Cat = Cat {
    _catName :: String,
    _catRace :: String,
    _catOwner :: Maybe Person
} deriving (Show, Eq, Ord)

makeLenses ''Cat

data Chinchilla = Chinchilla {
    _chinName :: String,
    _chinOwner :: Maybe Person
} deriving (Show, Eq, Ord)

makeLenses ''Chinchilla


data Animal = D {
    _dog :: Dog,
    _dogSpecies :: String
}| C Cat String String | Chin Chinchilla String String deriving (Show, Eq, Ord)

makePrisms ''Animal