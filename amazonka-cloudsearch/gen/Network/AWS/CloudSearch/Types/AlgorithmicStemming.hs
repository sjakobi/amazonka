{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.AlgorithmicStemming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.AlgorithmicStemming
  ( AlgorithmicStemming
      ( ..,
        ASFull,
        ASLight,
        ASMinimal,
        ASNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AlgorithmicStemming
  = AlgorithmicStemming'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASFull :: AlgorithmicStemming
pattern ASFull = AlgorithmicStemming' "full"

pattern ASLight :: AlgorithmicStemming
pattern ASLight = AlgorithmicStemming' "light"

pattern ASMinimal :: AlgorithmicStemming
pattern ASMinimal = AlgorithmicStemming' "minimal"

pattern ASNone :: AlgorithmicStemming
pattern ASNone = AlgorithmicStemming' "none"

{-# COMPLETE
  ASFull,
  ASLight,
  ASMinimal,
  ASNone,
  AlgorithmicStemming'
  #-}

instance FromText AlgorithmicStemming where
  parser = (AlgorithmicStemming' . mk) <$> takeText

instance ToText AlgorithmicStemming where
  toText (AlgorithmicStemming' ci) = original ci

instance Hashable AlgorithmicStemming

instance NFData AlgorithmicStemming

instance ToByteString AlgorithmicStemming

instance ToQuery AlgorithmicStemming

instance ToHeader AlgorithmicStemming

instance FromXML AlgorithmicStemming where
  parseXML = parseXMLText "AlgorithmicStemming"
