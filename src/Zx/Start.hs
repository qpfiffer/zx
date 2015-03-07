{-# LANGUAGE OverloadedStrings #-}

module Zx.Start where

import Data.ByteString.Lazy.Char8 as BS
import System.Environment
import System.Exit

zxStart :: IO ()
zxStart = do
    BS.putStrLn "start"
    exitWith ExitSuccess
