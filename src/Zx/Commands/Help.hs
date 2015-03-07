{-# LANGUAGE OverloadedStrings #-}

module Zx.Commands.Help (zxHelp) where

import qualified Data.Text as T
import           Data.Text.IO as TIO
import           System.Environment
import           System.Exit

zxHelp :: IO ()
zxHelp = do
    exitWith ExitSuccess
