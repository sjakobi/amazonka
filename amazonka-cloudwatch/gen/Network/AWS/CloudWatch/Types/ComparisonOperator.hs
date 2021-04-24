{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.ComparisonOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.ComparisonOperator
  ( ComparisonOperator
      ( ..,
        GreaterThanOrEqualToThreshold,
        GreaterThanThreshold,
        GreaterThanUpperThreshold,
        LessThanLowerOrGreaterThanUpperThreshold,
        LessThanLowerThreshold,
        LessThanOrEqualToThreshold,
        LessThanThreshold
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

pattern GreaterThanOrEqualToThreshold :: ComparisonOperator
pattern GreaterThanOrEqualToThreshold = ComparisonOperator' "GreaterThanOrEqualToThreshold"

pattern GreaterThanThreshold :: ComparisonOperator
pattern GreaterThanThreshold = ComparisonOperator' "GreaterThanThreshold"

pattern GreaterThanUpperThreshold :: ComparisonOperator
pattern GreaterThanUpperThreshold = ComparisonOperator' "GreaterThanUpperThreshold"

pattern LessThanLowerOrGreaterThanUpperThreshold :: ComparisonOperator
pattern LessThanLowerOrGreaterThanUpperThreshold = ComparisonOperator' "LessThanLowerOrGreaterThanUpperThreshold"

pattern LessThanLowerThreshold :: ComparisonOperator
pattern LessThanLowerThreshold = ComparisonOperator' "LessThanLowerThreshold"

pattern LessThanOrEqualToThreshold :: ComparisonOperator
pattern LessThanOrEqualToThreshold = ComparisonOperator' "LessThanOrEqualToThreshold"

pattern LessThanThreshold :: ComparisonOperator
pattern LessThanThreshold = ComparisonOperator' "LessThanThreshold"

{-# COMPLETE
  GreaterThanOrEqualToThreshold,
  GreaterThanThreshold,
  GreaterThanUpperThreshold,
  LessThanLowerOrGreaterThanUpperThreshold,
  LessThanLowerThreshold,
  LessThanOrEqualToThreshold,
  LessThanThreshold,
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

instance FromXML ComparisonOperator where
  parseXML = parseXMLText "ComparisonOperator"
