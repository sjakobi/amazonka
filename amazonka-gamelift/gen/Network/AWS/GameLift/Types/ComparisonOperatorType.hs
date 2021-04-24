{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.ComparisonOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.ComparisonOperatorType
  ( ComparisonOperatorType
      ( ..,
        GreaterThanOrEqualToThreshold,
        GreaterThanThreshold,
        LessThanOrEqualToThreshold,
        LessThanThreshold
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComparisonOperatorType
  = ComparisonOperatorType'
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

pattern GreaterThanOrEqualToThreshold :: ComparisonOperatorType
pattern GreaterThanOrEqualToThreshold = ComparisonOperatorType' "GreaterThanOrEqualToThreshold"

pattern GreaterThanThreshold :: ComparisonOperatorType
pattern GreaterThanThreshold = ComparisonOperatorType' "GreaterThanThreshold"

pattern LessThanOrEqualToThreshold :: ComparisonOperatorType
pattern LessThanOrEqualToThreshold = ComparisonOperatorType' "LessThanOrEqualToThreshold"

pattern LessThanThreshold :: ComparisonOperatorType
pattern LessThanThreshold = ComparisonOperatorType' "LessThanThreshold"

{-# COMPLETE
  GreaterThanOrEqualToThreshold,
  GreaterThanThreshold,
  LessThanOrEqualToThreshold,
  LessThanThreshold,
  ComparisonOperatorType'
  #-}

instance FromText ComparisonOperatorType where
  parser = (ComparisonOperatorType' . mk) <$> takeText

instance ToText ComparisonOperatorType where
  toText (ComparisonOperatorType' ci) = original ci

instance Hashable ComparisonOperatorType

instance NFData ComparisonOperatorType

instance ToByteString ComparisonOperatorType

instance ToQuery ComparisonOperatorType

instance ToHeader ComparisonOperatorType

instance ToJSON ComparisonOperatorType where
  toJSON = toJSONText

instance FromJSON ComparisonOperatorType where
  parseJSON = parseJSONText "ComparisonOperatorType"
