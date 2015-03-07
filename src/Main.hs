{-# LANGUAGE OverloadedStrings #-}

import Data.ByteString.Lazy.Char8 as BS
import System.Environment
import System.Exit

version :: BS.ByteString
version = "0.1"

printUsage :: IO ()
printUsage = do
    BS.putStrLn "Usage: zx [--version] [--help] <command> [<args>]\n"
    BS.putStrLn "Commands:"
    BS.putStrLn "    start       Starts a new session"
    BS.putStrLn "    log         Logs a message to the currently open session, or the last"
    BS.putStrLn "                open session."
    BS.putStrLn "    stop        Stops the current session"
    exitWith ExitSuccess

printVersion :: IO ()
printVersion = do
    BS.putStrLn $ versionStr
    exitWith ExitSuccess
  where
    versionStr = BS.concat ["zx v", version]

runCommand :: [BS.ByteString] -> IO ()
runCommand ["--version"] = printVersion
runCommand ["--help"] = printUsage
runCommand _ = printUsage

main :: IO ()
main = do
    args <- getArgs
    runCommand $ fmap BS.pack args

    exitWith ExitSuccess

