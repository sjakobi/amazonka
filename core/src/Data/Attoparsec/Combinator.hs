{-# LANGUAGE BangPatterns, CPP #-}
#if __GLASGOW_HASKELL__ >= 702
{-# LANGUAGE Trustworthy #-} -- Imports internal modules
#endif
-- |
-- Module      :  Data.Attoparsec.Combinator
-- Copyright   :  Daan Leijen 1999-2001, Bryan O'Sullivan 2007-2015
-- License     :  BSD3
--
-- Maintainer  :  bos@serpentine.com
-- Stability   :  experimental
-- Portability :  portable
--
-- Useful parser combinators, similar to those provided by Parsec.
module Data.Attoparsec.Combinator ((<?>)) where

import Data.Attoparsec.Internal.Types (Parser(..))
import Prelude hiding (succ)

-- | Name the parser, in case failure occurs.
(<?>) :: Parser i a
      -> String                 -- ^ the name to use if parsing fails
      -> Parser i a
p <?> msg0 = Parser $ \t pos more lose succ ->
             let lose' t' pos' more' strs msg = lose t' pos' more' (msg0:strs) msg
             in runParser p t pos more lose' succ
{-# INLINE (<?>) #-}
infix 0 <?>
