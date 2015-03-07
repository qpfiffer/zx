{-# LANGUAGE OverloadedStrings #-}

import Zx.Start

import qualified Data.Text as T
import           Data.Text.IO as TIO
import           System.Environment
import           System.Exit

version :: T.Text
version = "0.1"

printUsage :: IO ()
printUsage = do
    TIO.putStrLn "Usage: zx [--version] [--help] <command> [<args>]\n"
    TIO.putStrLn "Commands:"
    TIO.putStrLn "    start       Starts a new session"
    TIO.putStrLn "    log         Logs a message to the currently open session, or the last"
    TIO.putStrLn "                open session."
    TIO.putStrLn "    stop        Stops the current session"
    exitWith ExitSuccess

printVersion :: IO ()
printVersion = do
    TIO.putStrLn versionStr
    exitWith ExitSuccess
  where
    versionStr = T.concat ["zx v", version]

runCommand :: [T.Text] -> IO ()
runCommand ["--version"] = printVersion
runCommand ["--help"] = printUsage
runCommand ["start"] = zxStart
runCommand _ = printUsage

main :: IO ()
main = do
    args <- getArgs
    runCommand $ fmap T.pack args

    exitWith ExitSuccess

