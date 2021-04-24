{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        EQ',
        GE,
        GT',
        LE,
        LT',
        NE
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComparisonOperator
  = ComparisonOperator'
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

pattern EQ' :: ComparisonOperator
pattern EQ' = ComparisonOperator' "EQ"

pattern GE :: ComparisonOperator
pattern GE = ComparisonOperator' "GE"

pattern GT' :: ComparisonOperator
pattern GT' = ComparisonOperator' "GT"

pattern LE :: ComparisonOperator
pattern LE = ComparisonOperator' "LE"

pattern LT' :: ComparisonOperator
pattern LT' = ComparisonOperator' "LT"

pattern NE :: ComparisonOperator
pattern NE = ComparisonOperator' "NE"

{-# COMPLETE
  EQ',
  GE,
  GT',
  LE,
  LT',
  NE,
  ComparisonOperator'
  #-}

instance FromText ComparisonOperator where
  parser = (ComparisonOperator' . mk) <$> takeText

instance ToText ComparisonOperator where
  toText (ComparisonOperator' ci) = original ci

instance Hashable ComparisonOperator

instance NFData ComparisonOperator

instance ToByteString ComparisonOperator

instance ToQuery ComparisonOperator

instance ToHeader ComparisonOperator

instance ToJSON ComparisonOperator where
  toJSON = toJSONText

instance FromJSON ComparisonOperator where
  parseJSON = parseJSONText "ComparisonOperator"
