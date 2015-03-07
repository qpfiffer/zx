{-# LANGUAGE OverloadedStrings #-}

module Zx.Start (zxStart) where

import           Zx.IO

import qualified Data.Text as T
import           Data.Text.IO as TIO
import           System.Environment
import           System.Exit

zxStart :: IO ()
zxStart = do
    currentProject <- zxOpenProject
    exitWith ExitSuccess
