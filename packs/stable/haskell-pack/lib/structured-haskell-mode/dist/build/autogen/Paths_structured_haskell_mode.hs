module Paths_structured_haskell_mode (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [1,0,4] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/michal/.cabal/bin"
libdir     = "/home/michal/.cabal/lib/x86_64-linux-ghc-7.8.4/structured-haskell-mode-1.0.4"
datadir    = "/home/michal/.cabal/share/x86_64-linux-ghc-7.8.4/structured-haskell-mode-1.0.4"
libexecdir = "/home/michal/.cabal/libexec"
sysconfdir = "/home/michal/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "structured_haskell_mode_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "structured_haskell_mode_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "structured_haskell_mode_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "structured_haskell_mode_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "structured_haskell_mode_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
