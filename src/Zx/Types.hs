{-# LANGUAGE OverloadedStrings #-}

module Zx.Types
    (
      Project
    ) where

import qualified Data.Text as T

-- [ Day: [ Session: [ Log ] ] ]

data zxLog = zxLog { logMessage :: T.Text
                   }

data zxSession = zxSession { sessionLogs :: [zxLog]
                           }

data zxDay = zxDay { daySessions :: [zxSession]
                   }

data Project = Project { projectDays :: [zxDay]
                       }
