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
version = Version {versionBranch = [1,0,4], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/anks/.cabal/bin"
libdir     = "/home/anks/.cabal/lib/i386-linux-ghc-7.8.3/structured-haskell-mode-1.0.4"
datadir    = "/home/anks/.cabal/share/i386-linux-ghc-7.8.3/structured-haskell-mode-1.0.4"
libexecdir = "/home/anks/.cabal/libexec"
sysconfdir = "/home/anks/.cabal/etc"

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
