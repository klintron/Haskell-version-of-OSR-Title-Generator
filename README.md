# osr-title-generator

Port of the JavaScript based [OSR Title Generator]() to Haskell, just to help me learn the Haskell syntax. It's not very "Haskelly" since the whole thing runs as a Do block in an IO monad.

Uses RandomRs because I couldn't figure out how to get RandomR to work with getStdGen