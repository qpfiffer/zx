{-# LANGUAGE OverloadedStrings #-}

import Zx.Commands.Help
import Zx.Commands.Start

import qualified Data.Text as T
import           Data.Text.IO as TIO
import           System.Environment
import           System.Exit

version :: T.Text
version = "0.1"

printUsage :: IO ()
printUsage = do
    TIO.putStrLn "Usage: zx [--version] <command> [<args>]\n"
    TIO.putStrLn "Commands:"
    TIO.putStrLn "    help        Prints out more help about a given command."
    TIO.putStrLn "    log         Logs a message to the currently open session, or the last"
    TIO.putStrLn "                open session."
    TIO.putStrLn "    start       Starts a new session"
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
runCommand ["help"] = zxHelp
runCommand ["start"] = zxStart
runCommand _ = printUsage

main :: IO ()
main = do
    args <- getArgs
    runCommand $ fmap T.pack args

    exitWith ExitSuccess

