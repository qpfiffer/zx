{-# LANGUAGE OverloadedStrings #-}

module Zx.IO
    (
      zxOpenProject
    , zxCloseProject
    ) where

import qualified Data.Text as T

-- The name of all projects is just .zx. This is a hidden file
-- that will be created whenever you run zx.
projectFilename :: T.Text
projectFilename = ".zx"

zxOpenProject :: IO ()
zxOpenProject = undefined

zxLockProject :: IO ()
zxLockProject = undefined

zxUnlockProject :: IO ()
zxUnlockProject = undefined

zxCloseProject :: IO ()
zxCloseProject = undefined

